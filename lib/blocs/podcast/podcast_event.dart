part of 'podcast_bloc.dart';

@freezed
class PodcastEvent with _$PodcastEvent {
  const factory PodcastEvent.loaded({required PodcastsModel podCast}) =
      PodcastLoaded;
  //  PodCastModel? selectedPodCast

  const factory PodcastEvent.changed({required PodCastModel selectedPodCast}) =
      PodcastChanged;
}
