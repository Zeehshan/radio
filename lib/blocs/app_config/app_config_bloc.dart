import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../configs/environment.dart';
import '../../data/repositories/repositories.dart';
import '../../models/models.dart';
import '../../utils/utils.dart';

part 'app_config_event.dart';
part 'app_config_state.dart';
part 'app_config_bloc.freezed.dart';

class AppConfigBloc extends Bloc<AppConfigEvent, AppConfigState> {
  final ApiRepository apiRepository;
  AppConfigBloc({required this.apiRepository})
      : super(AppConfigState.initial()) {
    on<AppConfigLoaded>(_onAppConfigLoaded);
    on<AppConfigOfflined>(_onAppConfigOfflined);
    on<AppConfigConnected>(_onAppConfigConnected);
    on<AppConfigPlayerChanged>(_onAppConfigPlayerChanged);
    on<AppConfigAppInstalled>(_onAppConfigAppInstalled);
    on<AppConfigAppMonthly>(_onAppConfigAppMonthly);
  }

  void _onAppConfigLoaded(AppConfigLoaded event, Emitter emit) async {
    try {
      emit(state.copyWith(manageUI: BlocStateManageUIModel.initial()));
      final config = await apiRepository.config(appId: event.appId);
      ConfigModel configModel;
      final section =
          config.secciones!.map((key, value) => MapEntry(key, value));
      section.removeWhere((key, value) => value.activo?.toLowerCase() != 'si');
      configModel = config.copyWith(secciones: section);
      emit(state.copyWith(
          config: configModel,
          manageUI:
              state.manageUI.copyWith(uiStatus: BlocStateUIStatus.loaded)));

      Future.delayed(const Duration(seconds: 2), () {
        add(const AppConfigAppInstalled());
        Future.delayed(const Duration(seconds: 5), () {
          add(const AppConfigAppMonthly());
        });
      });
    } catch (e) {
      logger.e(runtimeType, '${e.runtimeType}::${e.toString()}');
      emit(state.copyWith(
          manageUI: state.manageUI.copyWith(
              uiStatus: BlocStateUIStatus.error,
              uiAction: BlocStateUIActionModel(
                  type: BlocStateUIActionType.failure,
                  message: e.runtimeType.toString()))));
    }
  }

  void _onAppConfigOfflined(AppConfigOfflined event, Emitter emit) async {
    try {
      if (state.config != null) {
        emit(state.copyWith(
            manageUI:
                state.manageUI.copyWith(uiStatus: BlocStateUIStatus.error)));
      } else {
        emit(state.copyWith(
            manageUI:
                state.manageUI.copyWith(uiStatus: BlocStateUIStatus.error)));
      }
    } catch (e) {
      logger.e(runtimeType, '${e.runtimeType}::${e.toString()}');
    }
  }

  void _onAppConfigConnected(AppConfigConnected event, Emitter emit) async {
    try {
      if (state.config == null) {
        add(AppConfigLoaded(appId: Environment.appId));
      }
    } catch (e) {
      logger.e(runtimeType, '${e.runtimeType}::${e.toString()}');
      // emit(state.copyWith(
      //     manageUI: state.manageUI.copyWith(
      //         uiAction: BlocStateUIActionModel(
      //             type: BlocStateUIActionType.failure,
      //             message: e.toString()))));
    }
  }

  void _onAppConfigPlayerChanged(AppConfigPlayerChanged event, Emitter emit) {
    emit(state.copyWith(playerType: event.playerType));
  }

  void _onAppConfigAppInstalled(
      AppConfigAppInstalled event, Emitter emit) async {
    try {
      final response =
          await apiRepository.instalation(appId: Environment.appId);
      if (response != 'ok') {
        Future.delayed(const Duration(seconds: 5), () {
          add(const AppConfigAppInstalled());
        });
      }
    } catch (e) {
      logger.e(runtimeType, '${e.runtimeType}::${e.toString()}');
      Future.delayed(const Duration(seconds: 5), () {
        add(const AppConfigAppInstalled());
      });
    }
  }

  void _onAppConfigAppMonthly(AppConfigAppMonthly event, Emitter emit) async {
    try {
      final response = await apiRepository.monthly(appId: Environment.appId);
      if (response != 'ok') {
        Future.delayed(const Duration(seconds: 5), () {
          add(const AppConfigAppMonthly());
        });
      }
    } catch (e) {
      logger.e(runtimeType, '${e.runtimeType}::${e.toString()}');
      Future.delayed(const Duration(seconds: 5), () {
        add(const AppConfigAppMonthly());
      });
    }
  }
}
