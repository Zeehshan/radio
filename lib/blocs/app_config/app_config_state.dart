part of 'app_config_bloc.dart';

@freezed
class AppConfigState with _$AppConfigState {
  factory AppConfigState({
    ConfigModel? config,
    required BlocStateManageUIModel manageUI,
    required PlayerType playerType,
  }) = _AppConfigState;
  factory AppConfigState.initial() {
    return AppConfigState(
        manageUI: BlocStateManageUIModel.initial(),
        playerType: PlayerType.radio);
  }
}
