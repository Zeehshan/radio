import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/app_config/app_config_bloc.dart';
import '../../../configs/routes/assets_path.dart';
import '../../../models/config/config_model.dart';
import '../../../utils/utils.dart';
import 'widgets/widgets.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final config = context.watch<AppConfigBloc>().state.config;

    final contacts = config!.acerca;
    final ContactModel? direccion = contacts?[ContactType.direccion.name];
    final ContactModel? telefono = contacts?[ContactType.telefono.name];
    final ContactModel? adicional = contacts?[ContactType.adicional.name];
    final ContactModel? email = contacts?[ContactType.email.name];
    final ContactModel? email2 = contacts?[ContactType.email2.name];
    final ContactModel? web = contacts?[ContactType.web.name];
    final ContactModel? whatsapp = contacts?[ContactType.whatsapp.name];
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                AssetsPath.appIcon,
                fit: BoxFit.contain,
                height: 100,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              config.app?.appName ?? '',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 18),
            ),
          ),
        ),
        if (direccion != null && direccion.mostrar == 'Si')
          SliverToBoxAdapter(
            child: Text(
              contacts![ContactType.direccion.name]!
                  .data!
                  .trim()
                  .replaceFirst(RegExp(r'\\n+'), '\n')
                  .replaceFirst(RegExp(r'\\n+'), '\n')
                  .replaceAll(RegExp(r'\\r+'), ''),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontSize: 16,
                  ),
            ),
          ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (telefono != null && telefono.mostrar == 'Si')
                  ContactWidget(
                    contactKey: ContactType.telefono.name,
                    contact: contacts![ContactType.telefono.name],
                  ),
                if (adicional != null && adicional.mostrar == 'Si')
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ContactWidget(
                      contactKey: ContactType.adicional.name,
                      contact: contacts![ContactType.adicional.name],
                    ),
                  ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (email != null && email.mostrar == 'Si')
                  ContactWidget(
                    contactKey: ContactType.email.name,
                    contact: contacts![ContactType.email.name],
                  ),
                if (email2 != null && email2.mostrar == 'Si')
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ContactWidget(
                      contactKey: ContactType.email2.name,
                      contact: contacts![ContactType.email2.name],
                    ),
                  ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (web != null && web.mostrar == 'Si')
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ContactWidget(
                      contactKey: ContactType.web.name,
                      contact: contacts![ContactType.web.name],
                    ),
                  ),
                if (whatsapp != null && whatsapp.mostrar == 'Si')
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ContactWidget(
                      contactKey: ContactType.whatsapp.name,
                      contact: contacts![ContactType.whatsapp.name],
                    ),
                  ),
                if (contacts![ContactType.texto.name]?.mostrar == 'Si')
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: config.app!.outstanding.withOpacity(.2)),
                        borderRadius: BorderRadius.circular(100)),
                    alignment: Alignment.center,
                    child: Text(
                      contacts![ContactType.texto.name]?.data ?? '',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 14, color: config.app!.outstanding),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
