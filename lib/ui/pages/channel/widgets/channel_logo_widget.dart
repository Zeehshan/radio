import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/blocs.dart';
import '../../../widgets/widgets.dart';

class ChannelLogoWidget extends StatelessWidget {
  const ChannelLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChannelBloc, ChannelState>(
      builder: (context, state) {
        if (state.channels == null && state.channel == null) return Container();
        return NetworkImageWidget(
          height: 200,
          boxFit: BoxFit.contain,
          imageUrl: state.channel!.icon,
        );
      },
    );
  }
}
