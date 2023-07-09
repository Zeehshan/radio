import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/blocs.dart';
import '../../widgets/widgets.dart';

class TimePage extends StatelessWidget {
  const TimePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appConfig = context.watch<AppConfigBloc>().state.config;
    if (appConfig?.secciones?['tiempo']?.tiempohtml == null) return Container();
    return AppWebviewWidget(
      link: appConfig!.secciones!['tiempo']!.tiempohtml!,
    );
  }
}
