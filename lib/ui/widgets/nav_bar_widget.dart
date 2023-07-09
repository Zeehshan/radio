import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../blocs/blocs.dart';
import '../../configs/routes/app_routes.dart';
import '../../configs/routes/assets_path.dart';
import '../../i18n/i18n.dart';
import 'widgets.dart';

/// ShellRoute that uses a bottom tab navigation (ScaffoldWithNavBar) with
/// separate navigators for each tab.
///
/// NOTE: This is not an optimal implementation and should ideally be
/// implemented in go_router, although in a way that doesn't use a navigator.
/// Here is a proposed implementation:
/// https://github.com/tolo/flutter_packages/tree/nested-persistent-navigation/packages/go_router
class NavbarWidget extends ShellRoute {
  NavbarWidget({
    GlobalKey<NavigatorState>? navigatorKey,
    List<RouteBase> routes = const <RouteBase>[],
    Key? scaffoldKey = const ValueKey('ScaffoldWithNavBar'),
  }) : super(
            navigatorKey: navigatorKey,
            routes: routes,
            builder: (context, state, fauxNav) {
              final config = context.watch<AppConfigBloc>().state.config;
              Color unSelectedColor = Colors.grey;
              return Scaffold(
                body: Stack(children: [
                  // Needed to keep the (faux) shell navigator alive
                  Offstage(child: fauxNav),
                  ScaffoldNavBarWidget(
                      tabs: <ScaffoldNavBarWidgetTabItem>[
                        ScaffoldNavBarWidgetTabItem(
                          globalKey: GlobalKey(),
                          rootRoutePath: AppRoutes.channel,
                          navigatorKey: GlobalKey<NavigatorState>(),
                          icon: Icon(
                            Icons.radio,
                            color: unSelectedColor,
                          ),
                          selectedIcon: const Icon(Icons.radio),
                          label: config?.app?.buttons.radio ?? t.LABEL.CHANNEL,
                        ),
                        ScaffoldNavBarWidgetTabItem(
                          globalKey: GlobalKey(),
                          rootRoutePath: AppRoutes.shutdown,
                          navigatorKey: GlobalKey<NavigatorState>(),
                          icon: Icon(
                            FontAwesomeIcons.moon,
                            color: unSelectedColor,
                          ),
                          selectedIcon: const Icon(
                            FontAwesomeIcons.moon,
                          ),
                          label: config?.app?.buttons.autoOff ?? '',
                        ),
                        if (config?.noticias?.mostrar?.toLowerCase() == 'si')
                          ScaffoldNavBarWidgetTabItem(
                            globalKey: GlobalKey(),
                            rootRoutePath: AppRoutes.news,
                            navigatorKey: GlobalKey<NavigatorState>(),
                            icon: Icon(
                              Icons.file_copy_sharp,
                              color: unSelectedColor,
                            ),
                            selectedIcon: const Icon(
                              Icons.file_copy_sharp,
                            ),
                            label: t.BOTTOM_NAVBAR.NEWS,
                          ),
                        if (config?.podcasts?.activo?.toLowerCase() == 'si')
                          ScaffoldNavBarWidgetTabItem(
                            globalKey: GlobalKey(),
                            rootRoutePath: AppRoutes.podcasts,
                            navigatorKey: GlobalKey<NavigatorState>(),
                            icon: Icon(
                              Icons.podcasts,
                              color: unSelectedColor,
                            ),
                            selectedIcon: const Icon(
                              Icons.podcasts,
                            ),
                            label: t.BOTTOM_NAVBAR.PODCAST,
                          ),
                        if (config?.secciones?.isNotEmpty == true)
                          ...config!.secciones!.keys
                              .map((key) => ScaffoldNavBarWidgetTabItem(
                                    globalKey: GlobalKey(),
                                    rootRoutePath: '/$key',
                                    navigatorKey: GlobalKey<NavigatorState>(),
                                    icon: _showBottomButton(
                                      key,
                                      unSelectedColor,
                                    ),
                                    selectedIcon: _showBottomButton(
                                        key, Theme.of(context).iconTheme.color),
                                    label: config.secciones![key]?.boton,
                                  ))
                              .toList(),
                        ScaffoldNavBarWidgetTabItem(
                          globalKey: GlobalKey(),
                          rootRoutePath: AppRoutes.contact,
                          navigatorKey: GlobalKey<NavigatorState>(),
                          icon: Icon(
                            Icons.email_outlined,
                            color: unSelectedColor,
                          ),
                          selectedIcon: const Icon(
                            Icons.email_outlined,
                          ),
                          label: config?.app?.buttons.about,
                        ),
                        ScaffoldNavBarWidgetTabItem(
                          globalKey: GlobalKey(),
                          rootRoutePath: AppRoutes.socials,
                          navigatorKey: GlobalKey<NavigatorState>(),
                          icon: Icon(
                            Icons.more_vert_outlined,
                            color: unSelectedColor,
                          ),
                          selectedIcon: const Icon(
                            Icons.more_vert_outlined,
                          ),
                          label: 'Socials',
                        ),
                      ],
                      key: scaffoldKey,
                      currentNavigator:
                          (fauxNav as HeroControllerScope).child as Navigator,
                      currentRouterState: state,
                      routes: routes),
                ]),
              );
            });

  static _showBottomButton(String key, [Color? color]) {
    switch (key) {
      case 'programacion':
        return Icon(
          FontAwesomeIcons.calendarCheck,
          color: color,
        );
      case 'tiempo':
        return Icon(
          Icons.cloud_queue_outlined,
          color: color,
        );
      case 'especial':
        return Image.asset(
          AssetsPath.event,
          color: color,
          height: 24,
        );
    }
  }
}
