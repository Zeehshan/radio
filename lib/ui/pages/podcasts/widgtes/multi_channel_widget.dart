import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/blocs.dart';

class MultiChannelWidget extends StatelessWidget {
  const MultiChannelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final config = context.watch<AppConfigBloc>().state.config?.app;
    if (config == null) {
      return Container();
    }
    Color color = config.outstanding;
    return BlocBuilder<PodcastBloc, PodcastState>(
      builder: (context, state) {
        bool isMulti = state.pocast?.multiple == 'Si';
        if (!isMulti) {
          return Container();
        }
        final channels = state.pocast!.canales;
        if (channels == null) return Container();
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          height: 40.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0), color: color),
          child: DropdownButtonHideUnderline(
              child: DropdownButton(
            borderRadius: BorderRadius.circular(30),
            iconEnabledColor: config.text,
            value: state.selectedPodCast,
            dropdownColor: color,
            onChanged: (channel) {
              if (channel != null) {
                context.read<PodcastBloc>().add(PodcastChanged(
                      selectedPodCast: channel,
                    ));
              }
            },
            items: channels
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(
                        e.nombre!,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: config.text, fontSize: 14),
                      ),
                    ))
                .toList(),
          ) // your Dropdown Widget here
              ),
        );
      },
    );
  }
}
