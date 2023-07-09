part of 'network_bloc.dart';

@freezed
class NetWorkEvent with _$NetWorkEvent {
  const factory NetWorkEvent.loaded() = NetWorkLoaded;
  const factory NetWorkEvent.networkNotified({required bool isConnected}) =
      NetWorkNotified;

  const factory NetWorkEvent.networkTypeChanged({required NetworkType type}) =
      NetWorktypeChanged;
}
