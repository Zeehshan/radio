import 'package:flutter/material.dart';

import '../../configs/environment.dart';
import '../../i18n/i18n.dart';

class InternetOffWidget extends StatelessWidget {
  const InternetOffWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              t.ERRR_MESSAGES.OFFLINE.TITLE,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              t.ERRR_MESSAGES.OFFLINE.SUB_TITLE(appname: Environment.appName),
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
      ),
    );
  }
}
