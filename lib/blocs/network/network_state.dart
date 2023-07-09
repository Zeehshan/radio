part of 'network_bloc.dart';

@freezed
class NetWorkState with _$NetWorkState {
  factory NetWorkState(
      {required BlocStateManageUIModel manageUI,
      required NetworkType networkType}) = _NetWorkState;
  factory NetWorkState.initial() {
    return NetWorkState(
        manageUI: BlocStateManageUIModel.initial(),
        networkType: NetworkType.unknown);
  }
}
