import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/blocs.dart';
import '../../../i18n/i18n.dart';

class AppInactivePage extends StatelessWidget {
  const AppInactivePage({super.key});

  @override
  Widget build(BuildContext context) {
    final config = context.watch<AppConfigBloc>().state.config!.app;
    Color color = config!.text;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              t.ERRR_MESSAGES.APP_DISABLE.TITLE,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: color),
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () => exit(0),
              child: Text(
                t.BUTTON.CLOSE_APP,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: color),
              ),
            )
          ],
        ),
      ),
    );
  }
}
