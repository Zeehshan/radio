import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../blocs/blocs.dart';
import '../../configs/routes/assets_path.dart';
import '../../i18n/i18n.dart';
import '../../models/models.dart';
import '../../utils/utils.dart';
import '../widgets/network_image_widget.dart';
import '../widgets/widgets.dart';

class NewsSheet {
  static newsSheet(
      {required BuildContext context, required NewsDataModel news}) {
    showModalBottomSheet(
        useSafeArea: true,
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
        ),
        builder: (_) {
          return NewsSheetWidget(news: news);
        });
  }
}

class NewsSheetWidget extends StatelessWidget {
  final NewsDataModel news;
  const NewsSheetWidget({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    final appConfig = context.watch<AppConfigBloc>().state.config;
    logger.i(news.description);
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: false,
          pinned: true,
          elevation: 1,
          centerTitle: true,
          automaticallyImplyLeading: true,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
          title: Text(
            'Noticias ${appConfig?.app?.appName}',
            style:
                Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 12),
          ),
        ),
        SliverToBoxAdapter(
          key: Key(news.toString()),
          child: Hero(
            tag: news.enclosure,
            child: NetworkImageWidget(
              imageUrl: news.enclosure,
              borderRadius: 0,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  news.title,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '${AppDateFormat.appDateFormat(date: news.pubDate)}h',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: HtmlWidget(
              news.description,
              textStyle: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 14),
              onTapUrl: (url) {
                logger.d(url);
                try {
                  launchUrl(Uri.parse(url),
                      mode: LaunchMode.externalApplication);
                } catch (e) {
                  ///
                }
                return Future.value(true);
              },
            ),
          ),
        ),
        const SliverPadding(padding: EdgeInsets.only(top: 20)),
        SliverToBoxAdapter(
          child: ElevatedButtonWidget(
            borderRadius: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            backgroundColor: appConfig!.app!.outstanding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsPath.book,
                  color: Colors.white,
                  height: 24,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  t.BUTTON.SeeComplete,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
            onPressed: () {
              try {
                launchUrl(Uri.parse(news.link),
                    mode: LaunchMode.externalApplication);
              } catch (e) {
                ///
              }
            },
          ),
        ),
        SliverToBoxAdapter(
          child: ElevatedButtonWidget(
            borderRadius: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            backgroundColor: Colors.white,
            borderSide: appConfig.app!.outstanding,
            borderWidth: 1.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  color: appConfig.app!.outstanding,
                  size: 18,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  t.BUTTON.RETURN,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: appConfig.app!.outstanding, fontSize: 16),
                ),
              ],
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        const SliverPadding(padding: EdgeInsets.only(top: 40)),
      ],
    );
  }
}
