// import 'dart:io' show Platform;
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NativeDialog {
  static Future nativeDialog(
      {required BuildContext context, required Widget child}) async {
    return await showGeneralDialog<dynamic>(
      barrierLabel: 'Label',
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.8),
      transitionDuration: const Duration(milliseconds: 350),
      pageBuilder: (context, anim1, anim2) {
        return Dialog(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              child: SingleChildScrollView(child: child),
            ));
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
