part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  factory NewsState(
      {required List<NewsDataModel> news,
      required BlocStateManageUIModel manageUI}) = _NewsState;
  factory NewsState.initial() {
    return NewsState(
        news: const [], manageUI: BlocStateManageUIModel.initial());
  }
}
