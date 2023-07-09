import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'blocs/blocs.dart';
import 'configs/environment.dart';
import 'configs/proividers.dart';
import 'configs/routes/app_routes.dart';
import 'configs/routes/router.dart';
import 'configs/themes/themes.dart';
import 'ui/dialogs/dialogs.dart';
import 'utils/utils.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [...providers],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: lightTheme,
        darkTheme: darkTheme,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider,
        builder: (context, child) {
          return MultiBlocListener(
            listeners: [
              BlocListener<NetWorkBloc, NetWorkState>(
                  listenWhen: (previous, current) =>
                      previous.manageUI.uiAction.type !=
                      current.manageUI.uiAction.type,
                  listener: (context, state) {
                    if (state.manageUI.uiAction.type ==
                        BlocStateUIActionType.completed) {
                      BlocProvider.of<AppConfigBloc>(navigator.context)
                          .add(const AppConfigConnected());
                    } else if (state.manageUI.uiAction.type ==
                        BlocStateUIActionType.failure) {
                      BlocProvider.of<AppConfigBloc>(navigator.context)
                          .add(const AppConfigOfflined());
                    } else if (state.manageUI.uiAction.type ==
                        BlocStateUIActionType.navigateToNext) {
                      if (BlocProvider.of<AppConfigBloc>(navigator.context)
                              .state
                              .config ==
                          null) {
                        BlocProvider.of<AppConfigBloc>(navigator.context)
                            .add(AppConfigLoaded(appId: Environment.appId));
                      }
                    }
                  }),
              BlocListener<AppConfigBloc, AppConfigState>(
                listenWhen: (previous, current) =>
                    previous.manageUI.uiStatus != current.manageUI.uiStatus,
                listener: (context, state) async {
                  if (state.manageUI.uiStatus == BlocStateUIStatus.error) {
                    // if (ModalRoute.of(context)!.settings.name ==
                    //     AppRoutes.splash) {

                    // }
                    if (state.manageUI.uiAction.message == 'SocketException') {
                      NonInternetDialog.nonInternetDialog(
                          context: navigator.context);
                    }
                  } else if (state.config?.result == 'ok') {
                    if (state.config != null &&
                        state.config?.streaming != null) {
                      BlocProvider.of<ChannelBloc>(navigator.context).add(
                          ChannelLoaded(
                              appname: state.config!.app!.appName,
                              streaming: state.config!.streaming!,
                              networkType: BlocProvider.of<NetWorkBloc>(
                                      navigator.context)
                                  .state
                                  .networkType));
                    }
                    Future.delayed(const Duration(seconds: 2), () {
                      navigator.context.goNamed(AppRoutes.channel);
                      if (state.config?.mensaje?.mostrar == 'Si') {
                        Future.delayed(const Duration(seconds: 2), () {
                          MessageDialog.messageDialog(
                              context: navigator.context);
                        });
                      }
                    });
                  } else {
                    if (state.config != null) {
                      AppDisableDialog()
                          .appDisableDialog(context: navigator.context);
                    }
                  }
                },
              ),
            ],
            child: child!,
          );
        },
      ),
    );
  }
}
