// ignore_for_file: depend_on_referenced_packages

import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';
import '../../../../blocs/blocs.dart';
import '../../../../data/services/services.dart';
import '../../../../models/models.dart';
import '../../../../utils/utils.dart';

class ChannelStatusWidget extends StatelessWidget {
  const ChannelStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final config = context.watch<AppConfigBloc>().state.config?.app;
    if (config == null) {
      return Container();
    }
    Color color = config.text;
    return BlocBuilder<ChannelBloc, ChannelState>(
      builder: (context, state) {
        if (state.channels == null && state.channel == null) return Container();
        final audioHandler = getIt<AudioPlayerHandler>();
        return StreamBuilder<IcyMetadata?>(
          stream: audioHandler.geticyMetadata(),
          builder: (context, snapshot) {
            final metadata = snapshot.data;
            logger.i(metadata?.info);
            final title = metadata?.info?.title ?? ' \n\nEn directo';
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text.rich(
                    TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: color),
                        text: state.channel!.metadata == 'No'
                            ? ''
                            : state.channel!.name,
                        children: [
                          TextSpan(
                              text: state.channel!.metadata == 'No'
                                  ? ''
                                  : title.isEmpty
                                      ? ' \n\nEn directo'
                                      : title)
                        ]),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Stream<MediaStateModel> get _mediaStateStream =>
      Rx.combineLatest2<MediaItem?, Duration, MediaStateModel>(
          getIt<AudioHandler>().mediaItem,
          AudioService.position,
          (mediaItem, position) => MediaStateModel(mediaItem, position));
}
