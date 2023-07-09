import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../blocs/app_config/app_config_bloc.dart';

class SocialWidget extends StatefulWidget {
  const SocialWidget({super.key});

  @override
  State<SocialWidget> createState() => _SocialWidgetState();
}

class _SocialWidgetState extends State<SocialWidget> {
  @override
  Widget build(BuildContext context) {
    final appConfig = context.watch<AppConfigBloc>().state.config!;
    return PopupMenuButton<dynamic>(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      key: widget.key,
      color: Theme.of(context).scaffoldBackgroundColor,
      offset: const Offset(0, -320),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      itemBuilder: (context) => appConfig.redes!.keys
          .map(
            (e) => PopupMenuItem(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    _icon(e),
                    color: appConfig.app!.outstanding,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    e,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
          )
          .toList(),
      child: Icon(
        Icons.more_vert,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  IconData _icon(key) {
    switch (key) {
      case 'Facebook':
        return Icons.facebook;
      case 'Twitter':
        return FontAwesomeIcons.twitter;
      case 'Instagram':
        return FontAwesomeIcons.instagram;
      case 'TikTok':
        return FontAwesomeIcons.tiktok;
      case 'Youtube':
        return FontAwesomeIcons.youtube;
      case 'Linkedin':
        return FontAwesomeIcons.linkedin;
      default:
        return Icons.info;
    }
  }
}
