import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../ui/pages/pages.dart';
import '../../ui/widgets/widgets.dart';
import 'app_routes.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

NavigatorState get navigator => _navigatorKey.currentState!;
final GoRouter router = GoRouter(
    navigatorKey: _navigatorKey,
    initialLocation: AppRoutes.splash,
    routes: <RouteBase>[
      GoRoute(
          path: AppRoutes.splash,
          builder: (BuildContext context, GoRouterState state) {
            return const SplashPage();
          }),
      GoRoute(
          path: AppRoutes.appInActive,
          builder: (BuildContext context, GoRouterState state) {
            return const AppInactivePage();
          }),
      NavbarWidget(routes: [
        GoRoute(
          path: AppRoutes.channel,
          name: AppRoutes.channel,
          builder: (BuildContext context, GoRouterState state) =>
              const ChannelPage(),
        ),

        GoRoute(
          path: AppRoutes.shutdown,
          name: AppRoutes.shutdown,
          builder: (BuildContext context, GoRouterState state) =>
              const ShutdownPage(),
        ),
        GoRoute(
          path: AppRoutes.news,
          name: AppRoutes.news,
          builder: (BuildContext context, GoRouterState state) =>
              const NewsPage(),
        ),
        GoRoute(
          path: AppRoutes.podcasts,
          name: AppRoutes.podcasts,
          builder: (BuildContext context, GoRouterState state) =>
              const PodcastsPage(),
        ),
        // if (navigator.context
        //         .watch<AppConfigBloc>()
        //         .state
        //         .config
        //         ?.secciones
        //         ?.isNotEmpty ==
        //     true)
        //   ...navigator.context
        //       .watch<AppConfigBloc>()
        //       .state
        //       .config!
        //       .secciones!
        //       .keys
        //       .map((key) => GoRoute(
        //           path: '/$key',
        //           name: '/$key',
        //           builder: (BuildContext context, GoRouterState state) =>
        //               list[key]!))
        //       .toList(),
        GoRoute(
          path: AppRoutes.programacion,
          name: AppRoutes.programacion,
          builder: (BuildContext context, GoRouterState state) =>
              const ProgrammingPage(),
        ),
        GoRoute(
          path: AppRoutes.tiempo,
          name: AppRoutes.tiempo,
          builder: (BuildContext context, GoRouterState state) =>
              const TimePage(),
        ),
        GoRoute(
          path: AppRoutes.especial,
          name: AppRoutes.especial,
          builder: (BuildContext context, GoRouterState state) =>
              const EspecialPage(),
        ),

        GoRoute(
          path: AppRoutes.contact,
          name: AppRoutes.contact,
          builder: (BuildContext context, GoRouterState state) =>
              const ContactsPage(),
        ),
      ]),
    ]);
