// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import '../../../../configs/notifiers/notifiers.dart';
import '../../../../configs/routes/assets_path.dart';
import '../../../../data/services/services.dart';

class WavesWidget extends StatelessWidget {
  const WavesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final pageManager = getIt<PlayerManager>();
    return ValueListenableBuilder<ButtonState>(
        valueListenable: pageManager.playButtonNotifier,
        builder: (_, value, __) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: value == ButtonState.playing
                ? Image.asset(
                    AssetsPath.wave,
                    fit: BoxFit.fitWidth,
                  )
                : Container(),
          );
        });
  }
}
