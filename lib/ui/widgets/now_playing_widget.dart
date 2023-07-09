// ignore_for_file: depend_on_referenced_packages

import 'package:audio_service/audio_service.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rxdart/rxdart.dart';

import '../../blocs/blocs.dart';
import '../../common.dart';
import '../../configs/routes/app_routes.dart';
import '../../data/services/services.dart';
import '../../models/models.dart';
import '../../utils/utils.dart';
import 'widgets.dart';

class NowPlayingWidget extends StatefulWidget {
  const NowPlayingWidget({Key? key}) : super(key: key);

  @override
  State<NowPlayingWidget> createState() => _NowPlayingWidgetState();
}

class _NowPlayingWidgetState extends State<NowPlayingWidget> {
  /// A stream reporting the combined state of the current queue and the current
  /// media item within that queue.
  Stream<MediaStateModel> get _mediaStateStream =>
      Rx.combineLatest2<MediaItem?, Duration, MediaStateModel>(
          getIt<AudioPlayerHandler>().mediaItem,
          AudioService.position,
          (mediaItem, position) => MediaStateModel(mediaItem, position));

  final pageManager = getIt<PlayerManager>();
  final _audioHandler = getIt<AudioPlayerHandler>();

  bool showSeek = false;

  @override
  Widget build(BuildContext context) {
    final config = context.watch<AppConfigBloc>().state;
    if (GoRouter.of(context).location == AppRoutes.channel) {
      return Container();
    }
    return Container(
      height: showSeek ? 120 : 70,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          color: config.config!.app!.outstanding.withOpacity(.8),
          boxShadow: [
            BoxShadow(
                blurRadius: 1,
                spreadRadius: 1,
                color: Colors.grey.withOpacity(.2),
                offset: const Offset(0, 0))
          ]),
      width: double.infinity,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ValueListenableBuilder(
                          valueListenable: pageManager.currentSongImageNotifier,
                          builder: (_, value, __) {
                            return NetworkImageWidget(
                                borderRadius: 0,
                                boxFit: BoxFit.cover,
                                imageUrl: value);
                          }),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ValueListenableBuilder<String>(
                              valueListenable:
                                  pageManager.currentSongTitleNotifier,
                              builder: (_, value, __) {
                                return AnimatedTextWidget(
                                  title: value,
                                );
                              }),
                          ValueListenableBuilder<String>(
                              valueListenable:
                                  pageManager.currentSongArtistNotifier,
                              builder: (_, value, __) {
                                if (value == 'null') {
                                  return Container();
                                }
                                return Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: Text(
                                    value,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(
                                            fontSize: 12,
                                            color: Colors.white70),
                                  ),
                                );
                              }),
                        ],
                      ),
                    ),
                    // if (config.playerType != PlayerType.radio)
                    //   StreamBuilder<PositionData>(
                    //     stream: _positionDataStream,
                    //     builder: (context, snapshot) {
                    //       final positionData = snapshot.data ??
                    //           PositionData(Duration.zero, Duration.zero, Duration.zero);

                    //       final Duration _remaining =
                    //           positionData.duration - positionData.position;

                    //       return Padding(
                    //         padding: const EdgeInsets.only(left: 10),
                    //         child: Text(
                    //             RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$')
                    //                     .firstMatch('$_remaining')
                    //                     ?.group(1) ??
                    //                 '$_remaining',
                    //             style: const TextStyle(color: Colors.white)),
                    //       );
                    //     },
                    //   ),
                    // if (config.playerType != PlayerType.radio)
                    //   StreamBuilder<PositionData>(
                    //     stream: _positionDataStream,
                    //     builder: (context, snapshot) {
                    //       final positionData = snapshot.data ??
                    //           PositionData(Duration.zero, Duration.zero, Duration.zero);

                    //       final Duration _remaining =
                    //           positionData.duration - positionData.position;

                    //       // return Padding(
                    //       //   padding: const EdgeInsets.only(left: 10),
                    //       //   child: Text(
                    //       //       RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$')
                    //       //               .firstMatch('$_remaining')
                    //       //               ?.group(1) ??
                    //       //           '$_remaining',
                    //       //       style: const TextStyle(color: Colors.white)),
                    //       // );
                    //       return IconButton(
                    //         constraints: const BoxConstraints(
                    //           maxHeight: 30,
                    //           maxWidth: 30,
                    //         ),
                    //         padding: const EdgeInsets.only(right: 10),
                    //         icon: const Icon(
                    //           Icons.replay_30,
                    //           color: Colors.white,
                    //         ),
                    //         iconSize: 25,
                    //         onPressed: () async {
                    //           pageManager.seek(Duration(
                    //               seconds: positionData.position.inSeconds + 15));
                    //         },
                    //       );
                    //     },
                    //   ),
                    const FittedBox(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 18, horizontal: 0),
                        child: PlayPauseButtonWidget(
                          backgroundColor: Colors.transparent,
                          showText: false,
                        ),
                      ),
                    ),
                    if (config.playerType != PlayerType.radio)
                      StreamBuilder<PositionData>(
                        stream: _positionDataStream,
                        builder: (context, snapshot) {
                          final positionData = snapshot.data ??
                              PositionData(
                                  Duration.zero, Duration.zero, Duration.zero);

                          final Duration _remaining =
                              positionData.duration - positionData.position;

                          // return Padding(
                          //   padding: const EdgeInsets.only(left: 10),
                          //   child: Text(
                          //       RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$')
                          //               .firstMatch('$_remaining')
                          //               ?.group(1) ??
                          //           '$_remaining',
                          //       style: const TextStyle(color: Colors.white)),
                          // );
                          return IconButton(
                            constraints: const BoxConstraints(
                              maxHeight: 30,
                              maxWidth: 30,
                            ),
                            padding: const EdgeInsets.only(right: 10),
                            icon: const Icon(
                              Icons.forward_30_rounded,
                              color: Colors.white,
                            ),
                            iconSize: 25,
                            onPressed: () async {
                              pageManager.seek(Duration(
                                  seconds:
                                      positionData.position.inSeconds + 15));
                            },
                          );
                        },
                      ),
                  ],
                ),
              ),
              if (config.playerType != PlayerType.radio)
                if (showSeek)
                  StreamBuilder<MediaStateModel>(
                    stream: _mediaStateStream,
                    builder: (context, snapshot) {
                      final mediaState = snapshot.data;
                      PositionData(Duration.zero, Duration.zero, Duration.zero);
                      return SeekBarWidget(
                        duration:
                            mediaState?.mediaItem?.duration ?? Duration.zero,
                        position: mediaState?.position ?? Duration.zero,
                        onChangeEnd: (newPosition) {
                          _audioHandler.seek(newPosition);
                        },
                      );
                    },
                  ),
            ],
          ),
          if (config.playerType != PlayerType.radio)
            Positioned(
              right: 10,
              top: 0,
              child: IconButton(
                  constraints:
                      const BoxConstraints(maxWidth: 25, maxHeight: 25),
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    setState(() {
                      showSeek = !showSeek;
                    });
                  },
                  icon: Icon(
                    showSeek
                        ? Icons.keyboard_arrow_down_rounded
                        : Icons.keyboard_arrow_up_rounded,
                    color: Colors.white,
                  )),
            ),
        ],
      ),
    );
  }

  Stream<Duration> get _bufferedPositionStream => getIt<AudioPlayerHandler>()
      .playbackState
      .map((state) => state.bufferedPosition)
      .distinct();
  Stream<Duration?> get _durationStream => getIt<AudioPlayerHandler>()
      .mediaItem
      .map((item) => item?.duration)
      .distinct();
  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          AudioService.position,
          _bufferedPositionStream,
          _durationStream,
          (position, bufferedPosition, duration) => PositionData(
              position, bufferedPosition, duration ?? Duration.zero));
}

class AnimatedTextWidget extends StatelessWidget {
  final String title;
  const AnimatedTextWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextScroll(
        title,
        intervalSpaces: 30,
        velocity: const Velocity(pixelsPerSecond: Offset(50, 0)),
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontSize: 15, color: Colors.white),
      ),
    );
  }
}
