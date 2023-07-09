import 'dart:io';

import 'package:flutter/material.dart';

import '../../data/services/services.dart';
import '../../i18n/i18n.dart';

class CloseAppDialog {
  static Future closeAppDialog({required BuildContext context}) async {
    return await showGeneralDialog<dynamic>(
      barrierLabel: 'Label',
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.8),
      transitionDuration: const Duration(milliseconds: 350),
      pageBuilder: (context, anim1, anim2) {
        return AlertDialog(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          content: Text(
            t.MESSAGES.APP_CLOSE,
            style:
                Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 15),
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  t.BUTTON.CANCEL,
                  style: Theme.of(context).textTheme.labelLarge,
                )),
            TextButton(
                onPressed: () {
                  final _audioHandler = getIt<AudioPlayerHandler>();
                  _audioHandler.stop().then((value) => exit(0));
                },
                child: Text(
                  t.BUTTON.CONFIRM,
                  style: Theme.of(context).textTheme.labelLarge,
                )),
          ],
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return Transform.scale(
          scale: anim1.value,
          child: child,
        );
      },
    );
    // if (Platform.isIOS) {
    //   return await showCupertinoModalPopup<dynamic>(
    //     barrierDismissible: true,
    //     context: context,
    //     builder: (BuildContext context) => SizedBox(
    //       width: MediaQuery.of(context).size.width,
    //       child: CupertinoAlertDialog(
    //         content: Material(child: child),
    //       ),
    //     ),
    //   );
    // } else {
    //   return await showGeneralDialog<dynamic>(
    //     barrierLabel: 'Label',
    //     context: context,
    //     barrierDismissible: true,
    //     barrierColor: Colors.black.withOpacity(0.8),
    //     transitionDuration: const Duration(milliseconds: 350),
    //     pageBuilder: (context, anim1, anim2) {
    //       return Dialog(
    //           insetPadding: EdgeInsets.zero,
    //           backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    //           child: child);
    //     },
    //     transitionBuilder: (context, anim1, anim2, child) {
    //       return Transform.scale(
    //         scale: anim1.value,
    //         child: child,
    //       );
    //     },
    //   );
    // }
  }
}
