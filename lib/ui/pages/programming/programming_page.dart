import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/app_config/app_config_bloc.dart';
import '../../widgets/widgets.dart';

class ProgrammingPage extends StatelessWidget {
  const ProgrammingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appConfig = context.watch<AppConfigBloc>().state.config;
    if (appConfig?.secciones?['programacion']?.url == null) return Container();
    return AppWebviewWidget(
      link: appConfig!.secciones!['programacion']!.url!,
    );
  }
}
