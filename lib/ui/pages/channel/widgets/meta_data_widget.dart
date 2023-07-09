// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import '../../../../blocs/blocs.dart';
import '../../../../data/services/services.dart';
import '../../../../models/models.dart';

class MetaDataWidget extends StatefulWidget {
  const MetaDataWidget({super.key});

  @override
  State<MetaDataWidget> createState() => _MetaDataWidgetState();
}

class _MetaDataWidgetState extends State<MetaDataWidget> {
  // late ChannelBloc channelbloc;
  // @override
  // void initState() {
  //   super.initState();
  //   channelbloc = BlocProvider.of<ChannelBloc>(context);
  //   if (widget.metaDataUrl != null) {
  //     channelbloc.add(ChannelMetadataChanged(url: widget.metaDataUrl!));
  //   }
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  // @override
  // void didUpdateWidget(covariant MetaDataWidget oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   if (widget.metaDataUrl != null) {
  //     channelbloc.add(ChannelMetadataChanged(url: widget.metaDataUrl!));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final config = context.watch<AppConfigBloc>().state.config?.app;
    if (config == null) {
      return Container();
    }
    Color color = config.text;
    return StreamBuilder<MediaStateModel>(
      stream: _mediaStateStream,
      builder: (context, snapshot) {
        final queueState = snapshot.data;
        final mediaItem = queueState?.mediaItem;
        String title = mediaItem?.title ?? '';
        if (mediaItem?.artist != null) {
          title = '$title - ${mediaItem?.artist}';
        }
        return Container(
          height: 40,
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.black45, borderRadius: BorderRadius.circular(100)),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: color, fontSize: 14),
          ),
        );
      },
    );
  }

  Stream<MediaStateModel> get _mediaStateStream =>
      Rx.combineLatest2<MediaItem?, Duration, MediaStateModel>(
          getIt<AudioPlayerHandler>().mediaItem,
          AudioService.position,
          (mediaItem, position) => MediaStateModel(mediaItem, position));
}
