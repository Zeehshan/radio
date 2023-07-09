import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../blocs/app_config/app_config_bloc.dart';
import '../../../widgets/widgets.dart';
import 'widgets.dart';

class BannersWidget extends StatefulWidget {
  const BannersWidget({super.key});

  @override
  State<BannersWidget> createState() => _BannersWidgetState();
}

class _BannersWidgetState extends State<BannersWidget> {
  late PageController _scrollController;
  Timer? _timer;
  late AppConfigBloc appConfigBloc;
  @override
  void initState() {
    super.initState();
    appConfigBloc = BlocProvider.of<AppConfigBloc>(context);
    if (appConfigBloc.state.config?.banners?.activo == 'Si') {
      _scrollController = PageController();
      _startAutoScroll();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    // _scrollController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(
        Duration(
            seconds:
                int.parse(appConfigBloc.state.config!.banners!.frecuencia!)),
        (Timer timer) {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _scrollController.animateToPage(
          0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final appConfig = context.watch<AppConfigBloc>().state.config;

    if (appConfig?.banners?.multiple == 'Si') {
      return SizedBox(
        height: 110,
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _scrollController,
          children: appConfig!.banners!.elementos!
              .map((e) => InkWell(
                    onTap: () {
                      if (e.enlace != null && e.enlace!.isNotEmpty) {
                        launchUrl(Uri.parse(e.enlace!),
                            mode: LaunchMode.externalApplication);
                      }
                    },
                    child: NetworkImageWidget(
                      borderRadius: 0,
                      boxFit: BoxFit.fill,
                      imageUrl: e.url,
                    ),
                  ))
              .toList(),
        ),
      );
      // return SizedBox(
      //   height: 110,
      //   width: double.infinity,
      //   child: CardSwiper(
      //     numberOfCardsDisplayed: 1,
      //     padding: EdgeInsets.zero,
      //     allowedSwipeDirection: AllowedSwipeDirection.only(left: true),
      //     cardsCount: appConfig!.banners!.elementos!.length,
      //     duration:
      //         Duration(seconds: int.parse(appConfig.banners!.frecuencia!)),
      //     cardBuilder: (context, index, percentThresholdX, percentThresholdY) =>
      //         NetworkImageWidget(
      //             borderRadius: 0,
      //             boxFit: BoxFit.fitHeight,
      //             imageUrl: appConfig.banners!.elementos![index].url),
      //   ),
      // );
    }
    return NetworkImageWidget(
        borderRadius: 0, imageUrl: appConfig!.banners!.elemento!.url);
  }
}
