part of 'podcast_bloc.dart';

@freezed
class PodcastState with _$PodcastState {
  factory PodcastState(
      {required BlocStateManageUIModel manageUI,
      PodcastsModel? pocast,
      PodCastModel? selectedPodCast,
      required Map<String, PodcastChannelModel?> podcasts}) = _PodcastState;
  factory PodcastState.initial() {
    return PodcastState(
        manageUI: BlocStateManageUIModel.initial(), podcasts: {});
  }
}
