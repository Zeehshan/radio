import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/repositories/repositories.dart';
import '../../models/models.dart';
import '../../utils/utils.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final ApiRepository apiRepository;
  NewsBloc({required this.apiRepository}) : super(NewsState.initial()) {
    on<NewsLoaded>(_onNewsLoaded);
  }

  void _onNewsLoaded(NewsLoaded event, Emitter emit) async {
    try {
      emit(state.copyWith(manageUI: BlocStateManageUIModel.initial()));
      final news = await apiRepository.getNews(link: event.link);
      emit(state.copyWith(
          news: news,
          manageUI: state.manageUI.copyWith(
              uiStatus: BlocStateUIStatus.loaded,
              uiAction: const BlocStateUIActionModel(
                  type: BlocStateUIActionType.completed))));
    } catch (e) {
      logger.e(runtimeType, '${e.runtimeType}::${e.toString()}');
      emit(state.copyWith(
          manageUI: state.manageUI.copyWith(
              uiStatus: BlocStateUIStatus.error,
              uiAction: const BlocStateUIActionModel(
                  type: BlocStateUIActionType.failure))));
    }
  }
}
