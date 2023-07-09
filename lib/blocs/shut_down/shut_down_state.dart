part of 'shut_down_bloc.dart';

@freezed
class ShutDownState with _$ShutDownState {
  factory ShutDownState({required int sec}) = _ShutDownState;
  factory ShutDownState.initial() {
    return ShutDownState(sec: 0);
  }
}
