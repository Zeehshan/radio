// ignore_for_file: depend_on_referenced_packages

import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_waveforms/flutter_audio_waveforms.dart';
import 'package:rxdart/rxdart.dart';
import '../../../../data/services/services.dart';
import '../../../../models/models.dart';

class ChannelWavesWidget extends StatelessWidget {
  const ChannelWavesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MediaStateModel>(
      stream: _mediaStateStream,
      builder: (context, snapshot) {
        final mediaState = snapshot.data;
        return Container(
          color: Colors.amber,
          child: PolygonWaveform(
            samples: [4100.0, 32.00],
            elapsedDuration: mediaState?.position,
            maxDuration: mediaState?.position,
            height: 180,
            width: 500,
          ),
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
