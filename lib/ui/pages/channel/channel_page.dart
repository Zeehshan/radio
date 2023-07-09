import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/blocs.dart';
// import '../../../configs/routes/assets_path.dart';
import '../../../configs/notifiers/notifiers.dart';
import '../../../data/services/services.dart';
import '../../../utils/utils.dart';
import '../../widgets/widgets.dart';
import 'widgets/widgets.dart';

class ChannelPage extends StatelessWidget {
  const ChannelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppConfigBloc, AppConfigState>(
      builder: (context, appConfigState) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: appConfigState.config?.app?.bottom == null
                  ? Container()
                  : NetworkImageWidget(
                      borderRadius: 0,
                      boxFit: BoxFit.fill,
                      imageUrl: appConfigState.config?.app?.bottom),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const ChannelsWidget(),
                const Spacer(),
                const ChannelLogoWidget(),
                const Spacer(
                  flex: 2,
                ),
                if (appConfigState.playerType == PlayerType.podcast)
                  BlocBuilder<ChannelBloc, ChannelState>(
                    buildWhen: (previous, current) =>
                        previous.channel?.url != current.channel?.url,
                    builder: (context, state) {
                      if (state.channel != null) {
                        return Container(
                          height: 40,
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 20),
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(100)),
                          child: Text(
                            state.channel?.name ?? '',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: appConfigState.config?.app?.text,
                                    fontSize: 14),
                          ),
                        );
                      }
                      return Container();
                    },
                  ),
                if (appConfigState.playerType == PlayerType.radio)
                  const MetaDataWidget(),
                const Spacer(),
                if (appConfigState.playerType == PlayerType.podcast)
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: appConfigState.config!.app!.outstanding,
                        borderRadius: BorderRadius.circular(100)),
                    child: InkWell(
                      onTap: () {
                        context.read<AppConfigBloc>().add(
                            const AppConfigPlayerChanged(
                                playerType: PlayerType.radio));
                        BlocProvider.of<ChannelBloc>(context).add(
                            ChannelChanged(
                                appname: appConfigState.config!.app!.appName,
                                channel: BlocProvider.of<ChannelBloc>(context)
                                    .state
                                    .channel!,
                                networkType:
                                    BlocProvider.of<NetWorkBloc>(context)
                                        .state
                                        .networkType));
                      },
                      child: Icon(Icons.play_arrow,
                          size: 60, color: appConfigState.config!.app!.text),
                    ),
                  ),
                if (appConfigState.playerType == PlayerType.radio)
                  const PlayPauseButtonWidget(
                    showText: false,
                  ),
                SizedBox(
                  height: 24,
                  child: Center(
                    child: BlocBuilder<NetWorkBloc, NetWorkState>(
                        buildWhen: (previous, current) =>
                            previous.manageUI.uiStatus !=
                            current.manageUI.uiStatus,
                        builder: (context, state) {
                          String text;
                          if (appConfigState.playerType == PlayerType.podcast) {
                            text = '';
                          } else if (state.manageUI.uiStatus ==
                              BlocStateUIStatus.loading) {
                            text = 'Connecting....';
                          } else if (state.manageUI.uiStatus ==
                              BlocStateUIStatus.error) {
                            text = 'Waiting to reconnect...';
                          } else {
                            text = 'Tap play to listen';
                          }
                          final pageManager = getIt<PlayerManager>();

                          return ValueListenableBuilder<ButtonState>(
                              valueListenable: pageManager.playButtonNotifier,
                              builder: (_, value, __) {
                                switch (value) {
                                  case ButtonState.playing:
                                    text = '';
                                    break;
                                  case ButtonState.loading:
                                    text = 'Connecting....';
                                    break;
                                  case ButtonState.paused:
                                    text = 'Tap play to listen';
                                  default:
                                }

                                return Text(
                                  appConfigState.playerType ==
                                          PlayerType.podcast
                                      ? 'Tap play to listen'
                                      : text,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(fontSize: 14),
                                );
                              });
                        }),
                  ),
                ),
                const Spacer(),
                if (appConfigState.config!.banners?.activo != 'Si' &&
                    appConfigState.playerType == PlayerType.radio)
                  const WavesWidget(),
                if (appConfigState.config!.banners?.activo == 'Si')
                  const BannersWidget(),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
            BlocBuilder<AppConfigBloc, AppConfigState>(
                buildWhen: (previous, current) =>
                    previous.manageUI.uiStatus != current.manageUI.uiStatus,
                builder: (context, state) {
                  if (state.manageUI.uiStatus == BlocStateUIStatus.error &&
                      state.config == null) {
                    return const InternetOffWidget();
                  }
                  return Container();
                }),
          ],
        );
      },
    );
  }
}
