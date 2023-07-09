part of 'channel_bloc.dart';

@freezed
class ChannelState with _$ChannelState {
  factory ChannelState({
    List<ChannelModel>? channels,
    ChannelModel? channel,
    StreamingModel? streaming,
    required Map<String, String> metaData,
  }) = _ChannelState;
  factory ChannelState.initial() {
    return ChannelState(metaData: {});
  }
}
