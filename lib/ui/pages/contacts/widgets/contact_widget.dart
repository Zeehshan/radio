import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../blocs/app_config/app_config_bloc.dart';
import '../../../../models/config/config_model.dart';
import '../../../../utils/enums.dart';
import '../../../../utils/utils.dart';

class ContactWidget extends StatelessWidget {
  final String contactKey;
  final ContactModel? contact;
  const ContactWidget(
      {super.key, required this.contactKey, required this.contact});

  @override
  Widget build(BuildContext context) {
    final appConfig = context.watch<AppConfigBloc>().state.config!.app!;
    if (contact?.mostrar != 'Si') {
      return Container();
    }

    return IntrinsicWidth(
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                  blurRadius: 1,
                  spreadRadius: 1,
                  color: Colors.grey.withOpacity(.2),
                  offset: const Offset(0, 0))
            ]),
        child: InkWell(
          onTap: () => launch(contactKey),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: [
                Icon(
                  iconData(contactKey),
                  color: contactKey == ContactType.whatsapp.name
                      ? Colors.green
                      : appConfig.outstanding,
                ),
                if (data(contactKey).isNotEmpty)
                  const SizedBox(
                    width: 4,
                  ),
                if (data(contactKey).isNotEmpty)
                  Text(
                    data(contactKey),
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontSize: 14),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  IconData? iconData(String key) {
    switch (key) {
      case 'direccion':
        return Icons.directions;
      case 'telefono':
        return Icons.phone;
      case 'adicional':
        return Icons.call;
      case 'web':
        return Icons.web;
      case 'email':
        return Icons.email;
      case 'email2':
        return Icons.email_outlined;
      case 'whatsapp':
        return FontAwesomeIcons.whatsapp;
      case 'texto':
        return FontAwesomeIcons.file;
      default:
        return Icons.info_outline;
    }
  }

  String data(String key) {
    switch (key) {
      case 'direccion':
        String str1 = contact!.data!;
        String result1 = str1.replaceAll(
            RegExp('[^A-Za-z]', caseSensitive: false, multiLine: true), ' ');
        return str1;
      case 'telefono':
        return '${contact!.texto}';
      case 'adicional':
        return '${contact!.texto}';
      case 'web':
        return contact!.texto!;
      case 'email':
        return contact!.data!;
      case 'email2':
        return contact!.data!;
      case 'whatsapp':
        return '';
      case 'texto':
        return contact!.data!;
      default:
        return contact!.data!;
    }
  }

  void launch(key) {
    switch (key) {
      case 'direccion':
        break;
      case 'telefono':
        final data = 'tel:${contact!.pais}${contact!.data}';
        _launchUrl(data);
        break;
      case 'adicional':
        final data = 'tel:${contact!.pais}${contact!.data}';
        _launchUrl(data);
        break;
      case 'web':
        final data = contact!.data!;
        _launchUrl(data);
        break;
      case 'email':
        final data = 'mailto:${contact!.data!}';
        _launchUrl(data);
        break;
      case 'email2':
        final data = 'mailto:${contact!.data!}';
        _launchUrl(data);
        break;
      case 'whatsapp':
        final data = 'https://wa.me/${contact!.data!}';

        _launchUrl(data);
        break;
      case 'texto':
        break;
    }
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if ((await canLaunchUrl(uri))) {
      try {
        launchUrl(uri, mode: LaunchMode.externalApplication);
      } catch (e) {
        logger.e(e);
      }
    } else {
      launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}
