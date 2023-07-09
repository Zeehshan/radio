import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/blocs.dart';

class EspecialPage extends StatelessWidget {
  const EspecialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appConfig = context.watch<AppConfigBloc>().state.config;
    if (appConfig?.secciones?['especial']?.url == null) return Container();
    return Image.network(
      appConfig!.secciones!['especial']!.url!,
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
