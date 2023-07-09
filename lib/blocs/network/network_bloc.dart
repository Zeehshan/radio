import 'package:audio_service/audio_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/providers/providers.dart';
import '../../data/services/services.dart';
import '../../models/models.dart';
import '../../utils/utils.dart';

part 'network_event.dart';
part 'network_state.dart';
part 'network_bloc.freezed.dart';

class NetWorkBloc extends Bloc<NetWorkEvent, NetWorkState> {
  NetWorkBloc._() : super(NetWorkState.initial()) {
    on<NetWorkLoaded>(_onNetWorkLoaded);
    on<NetWorkNotified>(_onNetWorkNotified);
    on<NetWorktypeChanged>(_onNetWorktypeChanged);
  }

  static final NetWorkBloc _instance = NetWorkBloc._();

  factory NetWorkBloc() => _instance;

  void _onNetWorkLoaded(NetWorkLoaded event, Emitter emit) async {
    try {
      NetworkHelper.observeNetwork();
    } catch (e) {
      ///
    }
  }

  void _onNetWorkNotified(NetWorkNotified event, Emitter emit) async {
    if (event.isConnected) {
      emit(state.copyWith(
          manageUI: state.manageUI.copyWith(
              uiStatus: BlocStateUIStatus.loaded,
              uiAction: const BlocStateUIActionModel(
                  type: BlocStateUIActionType.completed))));
    } else {
      emit(state.copyWith(manageUI: BlocStateManageUIModel.initial()));
      await Future.delayed(const Duration(seconds: 5));
      try {
        final pageManager = getIt<PlayerManager>();
        pageManager.stop();
      } catch (e) {
        //
      }
      emit(state.copyWith(
          manageUI: state.manageUI.copyWith(
              uiStatus: BlocStateUIStatus.error,
              uiAction: const BlocStateUIActionModel(
                  type: BlocStateUIActionType.failure))));
    }
  }

  void _onNetWorktypeChanged(NetWorktypeChanged event, Emitter emit) async {
    try {
      emit(state.copyWith(networkType: event.type));
      emit(state.copyWith(
          manageUI: state.manageUI.copyWith(
              uiStatus: BlocStateUIStatus.loaded,
              uiAction: const BlocStateUIActionModel(
                  type: BlocStateUIActionType.navigateToNext))));
      final audioHandler = getIt<AudioPlayerHandler>();
      final MediaItem? mediaItem = audioHandler.mediaItem.value;
      if (mediaItem?.extras?['type'] == 'radio') {
        DatabaseProvider databaseProvider = DatabaseProvider();
        ChannelModel? canal;
        try {
          canal = await databaseProvider.getChannel();
        } catch (e) {
          ///
        }
        if (canal != null) {
          String? id;
          if (event.type == NetworkType.wifi) {
            id = canal.url;
          } else if (event.type == NetworkType.mobile) {
            id = canal.howl;
            if (id.isEmpty) {
              id = canal.url;
            }
          }
          if (id != null) {
            final updated = mediaItem!.copyWith(id: id);
            logger.d(updated);
            audioHandler.updateMediaItem(updated);
          }
        }
      }
    } catch (e) {
      ////
    }
  }
}
