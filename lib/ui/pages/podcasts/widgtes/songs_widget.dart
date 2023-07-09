import 'dart:io';

import 'package:audio_service/audio_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../blocs/blocs.dart';
import '../../../../configs/notifiers/notifiers.dart';
import '../../../../configs/routes/router.dart';
import '../../../../data/services/services.dart';
import '../../../../i18n/i18n.dart';
import '../../../../models/models.dart';
import '../../../../utils/utils.dart';
import '../../../sheets/sheets.dart';
import '../../../widgets/widgets.dart';

class SongsWidget extends StatelessWidget {
  const SongsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppConfigBloc>().state.config;
    return BlocBuilder<PodcastBloc, PodcastState>(
      builder: (context, state) {
        if (state.selectedPodCast == null) {
          return Container();
        }
        if (state.manageUI.uiAction.type == BlocStateUIActionType.inProgress) {
          return Padding(
            padding: const EdgeInsets.only(top: 50),
            child: LoadingWidget(color: app!.app!.outstanding),
          );
        }
        final channel = state.podcasts[state.selectedPodCast!.nombre];
        if (channel == null || channel.item.isEmpty) {
          return Center(
            child: Text(
              'Feed is not available now and retry later',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 16),
            ),
          );
        }
        final songs = channel.item;
        int limit = int.parse(state.selectedPodCast!.limite!);
        return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: (limit > 0 && limit < songs.length) ? limit : songs.length,
          itemBuilder: (context, index) {
            final song = songs[index];
            String dateString = AppDateFormat.appDateFormat(date: song.pubDate);
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NetworkImageWidget(
                    imageUrl: song.image,
                    width: 70,
                    height: 70,
                    borderRadius: 2,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          song.title,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontSize: 14),
                        ),
                        const SizedBox(
                          height: 6,
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
                                text: '${dateString}h',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(fontSize: 12),
                              )
                            ])),
                        const SizedBox(
                          height: 6,
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
                                text: song.duration,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(fontSize: 12),
                              )
                            ])),
                        const SizedBox(
                          height: 6,
                        ),
                        SongButtonsWidget(
                          song: song,
                          songs: songs,
                          channel: channel,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class SongButtonsWidget extends StatelessWidget {
  final List<XmlPodcastModel> songs;
  final XmlPodcastModel song;
  final PodcastChannelModel? channel;
  const SongButtonsWidget(
      {super.key, required this.songs, required this.song, this.channel});

  @override
  Widget build(BuildContext context) {
    final pageManager = getIt<PlayerManager>();

    final appConfig = context.read<AppConfigBloc>().state.config!.app;
    double height = 32;
    return Row(
      children: [
        Expanded(
          child: ValueListenableBuilder<String>(
              valueListenable: pageManager.currentSongIdNotifier,
              builder: (_, value, __) {
                return ValueListenableBuilder<ButtonState>(
                    valueListenable: pageManager.playButtonNotifier,
                    builder: (_, valueButton, __) {
                      return ElevatedButtonWidget(
                        height: height,
                        borderRadius: 6,
                        backgroundColor: appConfig!.outstanding,
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          if (value != song.enclosure.url) {
                            BlocProvider.of<AppConfigBloc>(context).add(
                                const AppConfigPlayerChanged(
                                    playerType: PlayerType.podcast));
                            final list = songs
                                .map((e) => MediaItem(
                                    id: e.enclosure.url,
                                    title: e.title,
                                    artUri: Uri.parse(e.image),
                                    artist: channel!.title,
                                    duration: parseDuration(e.duration)))
                                .toList();
                            final update = list.reversed.toList();
                            final selectedSong = MediaItem(
                                id: song.enclosure.url,
                                title: song.title,
                                artist: channel!.title,
                                artUri: Uri.parse(song.image),
                                duration: parseDuration(song.duration));
                            pageManager.init(
                                mediaItems: update, indexCurrent: selectedSong);
                          } else if (valueButton == ButtonState.paused) {
                            pageManager.play();
                          } else if (valueButton == ButtonState.playing) {
                            pageManager.pause();
                          }
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            if (value == song.enclosure.url)
                              Align(
                                alignment: Alignment.centerLeft,
                                child: valueButton == ButtonState.loading
                                    ? Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: SizedBox(
                                          width: 12,
                                          height: 12,
                                          child: Platform.isIOS
                                              ? const CupertinoActivityIndicator(
                                                  color: Colors.white,
                                                )
                                              : const CircularProgressIndicator(
                                                  strokeWidth: 2.0,
                                                  color: Colors.white,
                                                ),
                                        ),
                                      )
                                    : Icon(
                                        (valueButton == ButtonState.paused)
                                            ? Icons.play_arrow
                                            : Icons.pause,
                                        color: Colors.white,
                                      ),
                              ),
                            if (value != song.enclosure.url)
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                ),
                              ),
                            Text(
                              t.BUTTON.PLAT_PODCAST,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      );
                    });
              }),
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          child: Row(
            children: [
              Icon(
                FontAwesomeIcons.plus,
                color: Theme.of(context).iconTheme.color,
                size: 18,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                t.BUTTON.MORE_INFO,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 12),
              ),
            ],
          ),
          onTap: () => PodcastSheet.podcastSheet(
              context: navigator.context,
              podcast: song,
              podcasts: songs,
              channel: channel),
        ),
        const SizedBox(
          width: 10,
        ),
        PopupMenuButton<dynamic>(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          color: Theme.of(context).scaffoldBackgroundColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          itemBuilder: (context) => [
            PopupMenuItem(
              onTap: () {
                final String share = '${t.HINT.SHARE_PODCAST} ${song.link}';
                Share.share(share);
              },
              child: Text(
                t.BUTTON.SHARE,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 14),
              ),
            ),
            PopupMenuItem(
              onTap: () {
                try {
                  launchUrl(Uri.parse(song.enclosure.url));
                } catch (e) {
                  ///
                }
              },
              child: Text(
                t.BUTTON.DownLoad,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 14),
              ),
            )
          ],
          child: Row(
            children: [
              Icon(
                Icons.share,
                color: Theme.of(context).iconTheme.color,
                size: 18,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                t.BUTTON.SHARE,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 12),
              ),
            ],
          ),
        )
        // InkWell(
        //   child: Row(
        //     children: [
        //       Icon(
        //         Icons.share,
        //         color: Theme.of(context).iconTheme.color,
        //         size: 18,
        //       ),
        //       const SizedBox(
        //         width: 6,
        //       ),
        //       Text(
        //         t.BUTTON.SHARE,
        //         style: Theme.of(context)
        //             .textTheme
        //             .titleLarge!
        //             .copyWith(fontSize: 12),
        //       ),
        //     ],
        //   ),
        //   onTap: () {
        //     try {
        //       launchUrl(Uri.parse(song.enclosure.url));
        //     } catch (e) {
        //       ///
        //     }
        //   },
        // ),
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
