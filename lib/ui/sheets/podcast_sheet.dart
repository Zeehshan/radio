import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../blocs/blocs.dart';
import '../../data/services/services.dart';
import '../../i18n/i18n.dart';
import '../../models/models.dart';
import '../../utils/utils.dart';
import '../widgets/widgets.dart';

class PodcastSheet {
  static podcastSheet(
      {required BuildContext context,
      required XmlPodcastModel podcast,
      required List<XmlPodcastModel> podcasts,
      PodcastChannelModel? channel}) {
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
          return PodcastSheetWidget(
              podcast: podcast, podcasts: podcasts, channel: channel);
        });
  }
}

class PodcastSheetWidget extends StatelessWidget {
  final XmlPodcastModel podcast;
  final List<XmlPodcastModel> podcasts;
  final PodcastChannelModel? channel;
  const PodcastSheetWidget(
      {super.key, required this.podcast, required this.podcasts, this.channel});

  @override
  Widget build(BuildContext context) {
    final appConfig = context.watch<AppConfigBloc>().state.config;
    logger.i(podcast.description);
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
            t.TITLE.Player_podcast,
            style:
                Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 12),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Hero(
                  tag: podcast.image,
                  child: NetworkImageWidget(
                    imageUrl: podcast.image,
                    borderRadius: 12,
                    height: 100,
                    width: 100,
                    boxFit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        podcast.title,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text.rich(TextSpan(
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontSize: 14),
                          text: t.LABEL.PUBDATE,
                          children: [
                            const TextSpan(text: ': '),
                            TextSpan(
                              text:
                                  '${AppDateFormat.appDateFormat(date: podcast.pubDate)}h',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(fontSize: 12),
                            )
                          ])),
                      const SizedBox(
                        height: 8,
                      ),
                      Text.rich(TextSpan(
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontSize: 14),
                          text: t.LABEL.DURATION,
                          children: [
                            const TextSpan(text: ': '),
                            TextSpan(
                              text: podcast.duration,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(fontSize: 12),
                            )
                          ])),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: HtmlWidget(
              podcast.description
                  .trim()
                  .replaceAll(RegExp(r'\\n+'), '<br>')
                  .replaceAll(RegExp(r'\n+'), '<br>')
                  .replaceAll(RegExp(r'\\r+'), '')
                  .replaceAll(RegExp(r'\\+'), ''),
              textStyle: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 14),
              onTapUrl: (url) {
                logger.d(url);
                try {
                  launchUrl(Uri.parse(url));
                } catch (e) {
                  ///
                }
                return Future.value(true);
              },
            ),
          ),
        ),
        const SliverPadding(padding: EdgeInsets.only(top: 20)),
        SliverFillRemaining(
          child: Center(
            child: ListView(
              reverse: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const NowPlayingWidget(),
                ElevatedButtonWidget(
                  borderRadius: 50,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  backgroundColor: Colors.white,
                  borderSide: appConfig!.app!.outstanding,
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
                ElevatedButtonWidget(
                  borderRadius: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  backgroundColor: appConfig!.app!.outstanding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        t.BUTTON.PLAT_PODCAST,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  onPressed: () {
                    BlocProvider.of<AppConfigBloc>(context).add(
                        const AppConfigPlayerChanged(
                            playerType: PlayerType.podcast));
                    final pageManager = getIt<PlayerManager>();
                    final list = podcasts
                        .map((e) => MediaItem(
                            id: e.enclosure.url,
                            title: e.title,
                            artUri: Uri.parse(e.image),
                            artist: channel!.title,
                            duration: parseDuration(e.duration)))
                        .toList();
                    final selectedSong = MediaItem(
                        id: podcast.enclosure.url,
                        title: podcast.title,
                        artist: channel!.title,
                        artUri: Uri.parse(podcast.image),
                        duration: parseDuration(podcast.duration));
                    pageManager.init(
                        mediaItems: list, indexCurrent: selectedSong);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Duration parseDuration(String s) {
    int hours = 0;
    int minutes = 0;
    int micros;
    List<String> parts = s.split(':');
    if (parts.length > 2) {
      hours = int.parse(parts[parts.length - 3]);
    }
    if (parts.length > 1) {
      minutes = int.parse(parts[parts.length - 2]);
    }
    micros = (double.parse(parts[parts.length - 1]) * 1000000).round();
    return Duration(hours: hours, minutes: minutes, microseconds: micros);
  }
}
