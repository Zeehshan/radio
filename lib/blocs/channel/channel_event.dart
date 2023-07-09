part of 'channel_bloc.dart';

@freezed
class ChannelEvent with _$ChannelEvent {
  const factory ChannelEvent.loaded(
      {required StreamingModel streaming,
      required String appname,
      required NetworkType networkType}) = ChannelLoaded;
  const factory ChannelEvent.changed(
      {required ChannelModel channel,
      required String appname,
      required NetworkType networkType}) = ChannelChanged;

  const factory ChannelEvent.metadataLoaded(
      {required String content, required String url}) = ChannelMetadataLoaded;

  const factory ChannelEvent.metaDataChanged({required MediaItem mediaItem}) =
      ChannelMetadataChanged;
}
