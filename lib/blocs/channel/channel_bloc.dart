// ignore_for_file: depend_on_referenced_packages

import 'package:audio_service/audio_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:http/http.dart' as http;
import '../../data/providers/providers.dart';
import '../../data/services/services.dart';
import '../../models/models.dart';
import '../../utils/utils.dart';

part 'channel_event.dart';
part 'channel_state.dart';
part 'channel_bloc.freezed.dart';

class ChannelBloc extends Bloc<ChannelEvent, ChannelState> {
  ChannelBloc() : super(ChannelState.initial()) {
    on<ChannelLoaded>(_onChannelLoaded);
    on<ChannelChanged>(_onChannelChanged);
    on<ChannelMetadataLoaded>(_onChannelMetadataLoaded);
    on<ChannelMetadataChanged>(_onChannelMetadataChanged);
  }

  void _onChannelLoaded(ChannelLoaded event, Emitter emit) async {
    try {
      emit(state.copyWith(
          channel: event.streaming.canal, channels: event.streaming.canales));
      DatabaseProvider databaseProvider = DatabaseProvider();
      ChannelModel? canal;
      try {
        canal = await databaseProvider.getChannel();
        if (canal != null) {
          canal = event.streaming.canal ??
              event.streaming.canales!
                  .firstWhere((element) => element.url == canal!.url);
        }
      } catch (e) {
        canal = event.streaming.canal ?? event.streaming.canales!.first;
      }

      add(ChannelChanged(
          networkType: event.networkType,
          channel: canal!,
          appname: event.appname));
    } catch (e) {
      logger.e(runtimeType, '${e.runtimeType}::${e.toString()}');
    }
  }

  void _onChannelChanged(ChannelChanged event, Emitter emit) async {
    try {
      emit(state.copyWith(channel: event.channel));
      final pageManager = getIt<PlayerManager>();
      String id;
      if (event.networkType == NetworkType.wifi) {
        id = event.channel.url;
      } else {
        logger.d('mobiel data');
        id = event.channel.howl;
        if (id.isEmpty) {
          id = event.channel.url;
        }
      }
      final MediaItem mediaItem = MediaItem(
          id: id,
          title: event.channel.name ?? event.appname,
          artUri: Uri.parse(event.channel.icon),
          extras: {'type': 'radio'});
      List<MediaItem> mediaItems = [mediaItem];
      pageManager.init(
        mediaItems: mediaItems,
        indexCurrent: mediaItem,
      );
      DatabaseProvider databaseProvider = DatabaseProvider();
      databaseProvider.saveChannel(channel: event.channel);
      if (event.channel.metadata == 'Si' &&
          event.channel.metadatosUrl != null) {
        await Future.delayed(const Duration(milliseconds: 500));
        add(ChannelMetadataChanged(mediaItem: mediaItem));
      }
    } catch (e) {
      logger.e(runtimeType, '${e.runtimeType}::${e.toString()}');
    }
  }

  void _onChannelMetadataLoaded(
      ChannelMetadataLoaded event, Emitter emit) async {
    try {} catch (e) {
      logger.e(runtimeType, '${e.runtimeType}::${e.toString()}');
    }
  }

  void _onChannelMetadataChanged(
      ChannelMetadataChanged event, Emitter emit) async {
    try {
      final audioHandler = getIt<AudioPlayerHandler>();
      ChannelModel channelModel;
      try {
        channelModel = state.channel!;
      } catch (e) {
        channelModel = state.channels!.firstWhere(
            (element) => element.metadatosUrl == event.mediaItem.id);
      }

      if (channelModel.metadata == 'Si' && channelModel.metadatosUrl != null) {
        audioHandler.customAction('metaDataApi', channelModel.toJson());
      }

      // final response = await http.read(Uri.parse(channelModel.metadatosUrl!));
      // final currentMediaItem = event.mediaItem;
      // final title = response.split('-')[0].trim();
      // final artist = response.split('-')[1].trim();
      // final mediaItem = currentMediaItem.copyWith(title: title, artist: artist);
      // final handler = getIt<AudioPlayerHandler>();
      // handler.updateMediaItem(mediaItem);

      // final response = await http.read(Uri.parse(event.url));
      // final metadata = state.metaData.map((key, value) => MapEntry(key, value));
      // logger.d(response);
      // metadata[event.url] = response;
      // emit(state.copyWith(metaData: metadata));
    } catch (e) {
      logger.e(runtimeType, '${e.runtimeType}::${e.toString()}');
    }
  }
}
