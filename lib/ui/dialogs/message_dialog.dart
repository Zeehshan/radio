import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../blocs/blocs.dart';
import '../../configs/routes/assets_path.dart';
import '../widgets/widgets.dart';

class MessageDialog {
  static messageDialog({required BuildContext context}) {
    showGeneralDialog<dynamic>(
      barrierLabel: 'Label',
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.8),
      transitionDuration: const Duration(milliseconds: 350),
      pageBuilder: (context, anim1, anim2) {
        return const MessageDialogWidget();
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return Transform.scale(
          scale: anim1.value,
          child: child,
        );
      },
    );
  }
}

class MessageDialogWidget extends StatelessWidget {
  const MessageDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final config = context.watch<AppConfigBloc>().state.config;
    return Dialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      insetPadding: const EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).dividerColor),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(12)),
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Text(
                config!.mensaje!.texto,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButtonWidget(
                          borderRadius: 100,
                          height: 46,
                          backgroundColor: const Color(0xffD9D9D9),
                          child: Text(
                            'Dismiss',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                    color: config.app!.outstanding,
                                    fontSize: 14),
                          ),
                          onPressed: () => Navigator.pop(context))),
                  if (config.mensaje?.link == 'Si')
                    const SizedBox(
                      width: 30,
                    ),
                  if (config.mensaje?.link == 'Si')
                    Expanded(
                      child: ElevatedButtonWidget(
                          backgroundColor: config.app!.outstanding,
                          borderRadius: 100,
                          height: 46,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(AssetsPath.link),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Read More',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                          onPressed: () {
                            launchUrl(Uri.parse(config.mensaje!.url),
                                mode: LaunchMode.externalApplication);
                            Navigator.pop(context);
                          }),
                    )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
