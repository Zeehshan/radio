import 'dart:io';

import 'package:flutter/material.dart';

import '../../configs/environment.dart';
import '../../data/services/services.dart';
import '../../i18n/i18n.dart';

class NonInternetDialog {
  static nonInternetDialog({required BuildContext context}) async {
    showGeneralDialog<dynamic>(
      barrierLabel: 'Label',
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.8),
      transitionDuration: const Duration(milliseconds: 350),
      pageBuilder: (context, anim1, anim2) {
        return AlertDialog(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            t.ERRR_MESSAGES.OFFLINE.TITLE,
            style:
                Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 15),
          ),
          content: Text(
            t.ERRR_MESSAGES.OFFLINE.SUB_TITLE(appname: Environment.appName),
            style:
                Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 15),
          ),
          actions: [
            TextButton(
                onPressed: () => exit(0),
                child: Text(
                  t.BUTTON.CLOSE,
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
