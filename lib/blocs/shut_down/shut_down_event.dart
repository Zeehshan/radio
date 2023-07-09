part of 'shut_down_bloc.dart';

@freezed
class ShutDownEvent with _$ShutDownEvent {
  const factory ShutDownEvent.timerChanged({required int sec}) =
      ShutDowntimerchanged;
  const factory ShutDownEvent.timerStoped() = ShutDowntimerStoped;
}
