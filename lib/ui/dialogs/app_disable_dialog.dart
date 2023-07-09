import 'dart:io';

import 'package:flutter/material.dart';

import '../../i18n/i18n.dart';
import 'dialogs.dart';

class AppDisableDialog {
  void appDisableDialog({required BuildContext context}) {
    NativeDialog.nativeDialog(
        context: context, child: const AppDisableWidget());
  }
}

class AppDisableWidget extends StatelessWidget {
  const AppDisableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          t.ERRR_MESSAGES.APP_DISABLE.TITLE,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(),
        ),
        const SizedBox(
          height: 40,
        ),
        TextButton(
          onPressed: () => exit(0),
          child: Text(
            t.BUTTON.CLOSE_APP,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(),
          ),
        )
      ],
    );
  }
}
