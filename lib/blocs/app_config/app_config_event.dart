part of 'app_config_bloc.dart';

@freezed
class AppConfigEvent with _$AppConfigEvent {
  const factory AppConfigEvent.loaded({required String appId}) =
      AppConfigLoaded;

  const factory AppConfigEvent.offlined() = AppConfigOfflined;

  const factory AppConfigEvent.conected() = AppConfigConnected;
  // PlayerType
  const factory AppConfigEvent.playerChanged({required PlayerType playerType}) =
      AppConfigPlayerChanged;

  const factory AppConfigEvent.appInstalled() = AppConfigAppInstalled;

  const factory AppConfigEvent.monthly() = AppConfigAppMonthly;
}
