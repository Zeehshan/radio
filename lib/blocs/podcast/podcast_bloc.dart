import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/providers/database_provider.dart';
import '../../data/repositories/repositories.dart';
import '../../models/models.dart';
import '../../utils/utils.dart';

part 'podcast_event.dart';
part 'podcast_state.dart';
part 'podcast_bloc.freezed.dart';

class PodcastBloc extends Bloc<PodcastEvent, PodcastState> {
  final ApiRepository apiRepository;
  PodcastBloc({required this.apiRepository}) : super(PodcastState.initial()) {
    on<PodcastLoaded>(_onPodcastLoaded);
    on<PodcastChanged>(_onPodcastChanged);
  }

  void _onPodcastLoaded(PodcastLoaded event, Emitter emit) async {
    try {
      emit(state.copyWith(pocast: event.podCast));
      final database = DatabaseProvider();
      final channel = await database.getPodcastChannel();
      if (channel != null) {
        add(PodcastChanged(selectedPodCast: channel));
      } else {
        add(PodcastChanged(
            selectedPodCast:
                state.pocast!.canales?.first ?? state.pocast!.canal!));
      }
    } catch (e) {
      logger.e(runtimeType, '${e.runtimeType}::${e.toString()}');
    }
  }

  void _onPodcastChanged(PodcastChanged event, Emitter emit) async {
    try {
      final database = DatabaseProvider();
      database.savePodcastChannel(channel: event.selectedPodCast);
      emit(state.copyWith(
          selectedPodCast: event.selectedPodCast,
          manageUI: state.manageUI.copyWith(
              uiAction: const BlocStateUIActionModel(
                  type: BlocStateUIActionType.inProgress))));
      final previousPodcast =
          state.podcasts.map((key, value) => MapEntry(key, value));
      if (previousPodcast[event.selectedPodCast.nombre] == null) {
        final podcasts =
            await apiRepository.getpodCasts(link: event.selectedPodCast.url!);
        previousPodcast[event.selectedPodCast.nombre!] = podcasts;
      }
      emit(state.copyWith(
          podcasts: previousPodcast,
          manageUI: state.manageUI.copyWith(
              uiAction: const BlocStateUIActionModel(
                  type: BlocStateUIActionType.completed))));
    } catch (e) {
      logger.e(runtimeType, '${e.runtimeType}::${e.toString()}');
      emit(state.copyWith(
          manageUI: state.manageUI.copyWith(
              uiAction: const BlocStateUIActionModel(
                  type: BlocStateUIActionType.failure))));
    }
  }
}
