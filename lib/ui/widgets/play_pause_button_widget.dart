import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/blocs.dart';
import '../../configs/notifiers/notifiers.dart';
import '../../data/services/services.dart';
import 'widgets.dart';

class PlayPauseButtonWidget extends StatelessWidget {
  final bool? showText;
  final Function()? onPlay;
  final Function()? onPause;
  final Color? backgroundColor;
  const PlayPauseButtonWidget(
      {Key? key,
      this.showText,
      this.onPlay,
      this.onPause,
      this.backgroundColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final config = context.watch<AppConfigBloc>().state.config?.app;
    if (config == null) {
      return Container();
    }
    Color color = config.text;
    Color backgroundColor0 = config.outstanding;
    final pageManager = getIt<PlayerManager>();
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          color: backgroundColor ?? backgroundColor0,
          borderRadius: BorderRadius.circular(100)),
      child: ValueListenableBuilder<ButtonState>(
        valueListenable: pageManager.playButtonNotifier,
        builder: (_, value, __) {
          switch (value) {
            case ButtonState.loading:
              return SizedBox(
                height: 40.0,
                child: LoadingWidget(
                  color: color,
                ),
              );
            case ButtonState.paused:
              if (showText == true) {
                return TextButton(
                  onPressed: () {
                    pageManager.play();
                  },
                  child: Text(
                    'PLAY',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: color),
                  ),
                );
              }
              return InkWell(
                onTap: pageManager.play,
                child: Icon(Icons.play_arrow, size: 60, color: color),
              );
            case ButtonState.playing:
              if (showText == true) {
                return TextButton(
                  onPressed: () {
                    pageManager.pause();
                  },
                  child: Text(
                    'STOP',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: color),
                  ),
                );
              }
              return InkWell(
                onTap: pageManager.stop,
                child: Icon(
                  Icons.pause,
                  size: 60,
                  color: color,
                ),
              );
          }
        },
      ),
    );
  }
}
