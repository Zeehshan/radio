import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/blocs.dart';
import '../../../../utils/utils.dart';

class ChannelsWidget extends StatelessWidget {
  const ChannelsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final config = context.watch<AppConfigBloc>().state.config;
    if (config == null) {
      return Container();
    }
    if (config.streaming?.multiple != 'Si') {
      return Container();
    }
    Color color = config.app!.outstanding;
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      height: 40.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0), color: color),
      child: DropdownButtonHideUnderline(
          child: BlocBuilder<ChannelBloc, ChannelState>(
        builder: (context, state) {
          if (state.channels == null) return Container();
          return DropdownButton(
            borderRadius: BorderRadius.circular(30),
            iconEnabledColor: config.app!.text,
            value: state.channel,
            dropdownColor: color,
            onChanged: (channel) {
              if (channel != null) {
                BlocProvider.of<AppConfigBloc>(context).add(
                    const AppConfigPlayerChanged(playerType: PlayerType.radio));

                context.read<ChannelBloc>().add(ChannelChanged(
                    appname: config.app!.appName,
                    channel: channel,
                    networkType: BlocProvider.of<NetWorkBloc>(context)
                        .state
                        .networkType));
              }
            },
            items: state.channels!
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(
                        e.name ?? config.app!.appName,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: config.app!.text, fontSize: 14),
                      ),
                    ))
                .toList(),
          );
        },
      ) // your Dropdown Widget here
          ),
    );
  }
}
