// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../blocs/blocs.dart';
import '../../configs/routes/app_routes.dart';
import '../../configs/routes/router.dart';
import '../../models/models.dart';
import '../dialogs/dialogs.dart';
import '../sheets/sheets.dart';
import 'widgets.dart';

/// Builds the "shell" for the app by building a Scaffold with a
/// BottomNavigationBar, where [child] is placed in the body of the Scaffold.
class ScaffoldNavBarWidget extends StatefulWidget {
  /// Constructs an [ScaffoldNavBarWidget].
  const ScaffoldNavBarWidget({
    required this.currentNavigator,
    required this.currentRouterState,
    required this.tabs,
    required this.routes,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldNavBarWidget'));

  /// The navigator for the currently active tab
  final Navigator currentNavigator;

  /// The pages for the current route
  List<Page<dynamic>> get pagesForCurrentRoute => currentNavigator.pages;

  /// The current router state
  final GoRouterState currentRouterState;

  /// The tabs
  final List<ScaffoldNavBarWidgetTabItem> tabs;

  // The routes
  final List<RouteBase> routes;

  @override
  State<StatefulWidget> createState() => ScaffoldNavBarWidgetState();
}

/// State for ScaffoldNavBarWidget
class ScaffoldNavBarWidgetState extends State<ScaffoldNavBarWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final List<_NavBarTabNavigator> _tabs;

  //
  int _locationToTabIndex(String location) {
    final int index = _tabs.indexWhere(
        (_NavBarTabNavigator t) => location.startsWith(t.rootRoutePath));
    return index < 0 ? 0 : index;
  }

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabs = widget.tabs
        .map((ScaffoldNavBarWidgetTabItem e) => _NavBarTabNavigator(e))
        .toList();

    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    _animationController.forward();
  }

  @override
  void didUpdateWidget(covariant ScaffoldNavBarWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _updateForCurrentTab();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _updateForCurrentTab();
  }

  void _updateForCurrentTab() {
    final int previousIndex = _currentIndex;
    final location = GoRouter.of(context).location;
    _currentIndex = _locationToTabIndex(location);

    final _NavBarTabNavigator tabNav = _tabs[_currentIndex];
    tabNav.pages = widget.pagesForCurrentRoute;
    tabNav.lastLocation = location;

    if (previousIndex != _currentIndex) {
      _animationController.forward(from: 0.0);
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        CloseAppDialog.closeAppDialog(
          context: context,
        );
        return Future.value(false);
      },
      child: Scaffold(
        extendBody: true,
        body: SafeArea(
            bottom: GoRouter.of(context).location == AppRoutes.channel
                ? true
                : false,
            child: _buildBody(context)),

        bottomNavigationBar: NavbarItemsWidget(
          currentIndex: _currentIndex,
          tabs: _tabs,
          onTap: (int idx) => _onItemTapped(idx, context),
        ),
        // bottomNavigationBar: IntrinsicHeight(
        //   child: Container(
        //     padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        //     color: app?.app?.outstanding,
        //     child: SingleChildScrollView(
        //       scrollDirection: Axis.horizontal,
        //       child: Row(
        //         children: _tabs.map((_NavBarTabNavigator e) {
        //           final int index = _tabs
        //               .map((e) => e.bottomNavigationTab.navigatorKey)
        //               .toList()
        //               .indexOf(e.bottomNavigationTab.navigatorKey);
        //           return InkWell(
        //             onTap: () {
        //               _onItemTapped(
        //                   _tabs
        //                       .map((e) => e.bottomNavigationTab.navigatorKey)
        //                       .toList()
        //                       .indexOf(e.bottomNavigationTab.navigatorKey),
        //                   context);
        //             },
        //             child: Padding(
        //               padding: const EdgeInsets.symmetric(horizontal: 6),
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.center,
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Ink(
        //                       color: index != _currentIndex
        //                           ? Colors.grey
        //                           : app!.app!.text,
        //                       child: e.bottomNavigationTab.icon),
        //                   Text(
        //                     e.bottomNavigationTab.label ?? '',
        //                     style: Theme.of(context)
        //                         .textTheme
        //                         .labelMedium!
        //                         .copyWith(
        //                             color: index != _currentIndex
        //                                 ? Colors.grey
        //                                 : app!.app!.text),
        //                   )
        //                 ],
        //               ),
        //             ),
        //           );
        //         }).toList(),
        //       ),
        //     ),
        //   ),
        // ),
        // bottomNavigationBar: BottomNavigationBar(
        //   // unSelectedColor: Colors.grey,
        //   // strokeColor: const Color(0xff7F49A9),

        // unselectedLabelStyle: Theme.of(context)
        //     .textTheme
        //     .labelMedium!
        //     .copyWith(color: app!.app!.text),

        //   selectedItemColor: app?.app?.text,
        //   backgroundColor: app?.app?.outstanding,
        //   items: _tabs
        //       .map((_NavBarTabNavigator e) => e.bottomNavigationTab)
        //       .toList(),
        //   currentIndex: _currentIndex,
        //   onTap: (int idx) => _onItemTapped(idx, context),
        // ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return FadeTransition(
        opacity: _animationController,
        child: IndexedStack(
            index: _currentIndex,
            children: _tabs
                .map((_NavBarTabNavigator tab) => tab.buildNavigator(context))
                .toList()));
  }

  void _onItemTapped(int index, BuildContext context) {
    final appConfig =
        BlocProvider.of<AppConfigBloc>(context, listen: false).state.config!;
    String location = _tabs[index].currentLocation;
    if (location == AppRoutes.socials) {
    } else if (location == AppRoutes.news) {
      BlocProvider.of<NewsBloc>(navigator.context).add(NewsLoaded(
          link: BlocProvider.of<AppConfigBloc>(context)
              .state
              .config!
              .noticias!
              .rss!));
    } else if (location == AppRoutes.podcasts) {
      BlocProvider.of<PodcastBloc>(navigator.context).add(PodcastLoaded(
          podCast:
              BlocProvider.of<AppConfigBloc>(context).state.config!.podcasts!));
    }
    if (location == AppRoutes.socials) {
      _showPopupMenu(context, appConfig);
    } else if (location == AppRoutes.shutdown) {
      TimeSheet.timeSheet(context: context);
    } else {
      GoRouter.of(context).go(_tabs[index].currentLocation);
    }
    // scrollToItem(index);
  }

  Future scrollToItem(int index) async {
    final context = _tabs[index].bottomNavigationTab.globalKey.currentContext!;
    await Scrollable.ensureVisible(context,
        alignment: .2, duration: const Duration(milliseconds: 200));
  }

  _showPopupMenu(BuildContext context, ConfigModel appConfig) async {
    Offset offs = Offset(1, (MediaQuery.of(context).size.height));
    final RenderBox button = context.findRenderObject()! as RenderBox;
    final RenderBox overlay =
        Navigator.of(context).overlay!.context.findRenderObject()! as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(offs, ancestor: overlay),
        button.localToGlobal(button.size.bottomRight(Offset.zero) + offs,
            ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );
    final data0 = appConfig.redes!;
    final data = data0.map((key, value) => MapEntry(key, value));
    data.removeWhere((key, value) => value.mostrar == 'No');
    await showMenu(
      context: context,
      position: position,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      items: data.keys
          .map(
            (e) => PopupMenuItem(
              onTap: () {
                final url = data[e]!.url;
                launchUrl(Uri.parse(url!),
                    mode: LaunchMode.externalApplication);
              },
              child: Row(
                children: [
                  Icon(
                    _icon(e),
                    color: appConfig.app!.outstanding,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    e == 'Linkedin' ? 'LinkedIn' : e,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
          )
          .toList(),
      elevation: 8.0,
    );
  }

  IconData _icon(key) {
    switch (key) {
      case 'Facebook':
        return Icons.facebook;
      case 'Twitter':
        return FontAwesomeIcons.twitter;
      case 'Instagram':
        return FontAwesomeIcons.instagram;
      case 'TikTok':
        return FontAwesomeIcons.tiktok;
      case 'Youtube':
        return FontAwesomeIcons.youtube;
      case 'Linkedin':
        return FontAwesomeIcons.linkedin;
      default:
        return Icons.info;
    }
  }
}

/// Class representing a tab along with its navigation logic
class _NavBarTabNavigator {
  _NavBarTabNavigator(this.bottomNavigationTab);

  final ScaffoldNavBarWidgetTabItem bottomNavigationTab;

  String? lastLocation;

  String get currentLocation =>
      lastLocation != null ? lastLocation! : rootRoutePath;

  String get rootRoutePath => bottomNavigationTab.rootRoutePath;
  Key? get navigatorKey => bottomNavigationTab.navigatorKey;
  List<Page<dynamic>> pages = <Page<dynamic>>[];

  Widget buildNavigator(BuildContext context) {
    if (pages.isNotEmpty) {
      return Navigator(
        key: navigatorKey,
        pages: pages,
        onPopPage: (Route<dynamic> route, dynamic result) {
          if (pages.length == 1 || !route.didPop(result)) {
            return false;
          }
          GoRouter.of(context).pop();
          return true;
        },
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}

/// Representation of a tab item in a [ScaffoldNavBarWidget]
class ScaffoldNavBarWidgetTabItem extends BottomNavigationBarItem {
  /// Constructs an [ScaffoldNavBarWidgetTabItem].
  const ScaffoldNavBarWidgetTabItem(
      {required this.globalKey,
      required this.rootRoutePath,
      this.selectedIcon,
      this.navigatorKey,
      this.showBadge = false,
      this.badgeCount = 0,
      required Widget icon,
      String? label})
      : super(icon: icon, label: label, backgroundColor: Colors.greenAccent);

  final GlobalKey globalKey;

  /// The initial location/path
  final String rootRoutePath;

  /// Optional navigatorKey
  final GlobalKey<NavigatorState>? navigatorKey;

  /// An alternative icon displayed when this bottom navigation item is
  /// selected.
  ///
  /// If this icon is not provided, the bottom navigation bar will display
  /// [icon] in either state.
  final Widget? selectedIcon;

  /// Notification badge count
  final int badgeCount;

  /// hide or show badge
  final bool showBadge;
}

////

class NavbarItemsWidget extends StatefulWidget {
  final int currentIndex;
  final List<_NavBarTabNavigator> tabs;
  final Function(int index) onTap;
  const NavbarItemsWidget(
      {super.key,
      required this.currentIndex,
      required this.tabs,
      required this.onTap});

  @override
  State<NavbarItemsWidget> createState() => _NavbarItemsWidgetState();
}

class _NavbarItemsWidgetState extends State<NavbarItemsWidget> {
  @override
  Widget build(BuildContext context) {
    final tabs = widget.tabs.length;
    return IntrinsicHeight(
      child: Column(
        children: [
          const NowPlayingWidget(),
          Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  border: const Border(
                    top: BorderSide(width: 1.0, color: Colors.grey),
                  )),
              child: tabs > 6
                  ? ListView.builder(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      physics: const ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.tabs.length,
                      itemBuilder: (context, int i) {
                        if (i < 0) {
                          return Container();
                        }
                        return Material(
                          key: widget.tabs[i].bottomNavigationTab.globalKey,
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              widget.onTap(i);
                            },
                            child: SizedBox(
                              width: 70,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  i == widget.currentIndex
                                      ? widget.tabs[i].bottomNavigationTab
                                          .selectedIcon!
                                      : widget.tabs[i].bottomNavigationTab.icon,
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    widget.tabs[i].bottomNavigationTab.label ??
                                        '',
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            color: i != widget.currentIndex
                                                ? Colors.grey
                                                : null),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(tabs, (i) {
                        if (i < 0) {
                          return Container();
                        }
                        return Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              widget.onTap(i);
                            },
                            child: SizedBox(
                              width: 70,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  i == widget.currentIndex
                                      ? widget.tabs[i].bottomNavigationTab
                                          .selectedIcon!
                                      : widget.tabs[i].bottomNavigationTab.icon,
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    widget.tabs[i].bottomNavigationTab.label ??
                                        '',
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            color: i != widget.currentIndex
                                                ? Colors.grey
                                                : null),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    )),
        ],
      ),
    );
  }
}
