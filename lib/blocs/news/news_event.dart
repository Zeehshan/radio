part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.loaded({required String link}) = NewsLoaded;
}
