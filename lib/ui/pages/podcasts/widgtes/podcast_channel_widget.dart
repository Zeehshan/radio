import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/blocs.dart';
import '../../../widgets/widgets.dart';

class PodcastChannelWidget extends StatelessWidget {
  const PodcastChannelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PodcastBloc, PodcastState>(
      builder: (context, state) {
        if (state.selectedPodCast?.nombre == null) {
          return Container();
        }
        final channel = state.podcasts[state.selectedPodCast?.nombre];
        if (channel == null) {
          return Container();
        }
        return Column(
          children: [
            NetworkImageWidget(
              height: 210,
              imageUrl: channel.image,
              borderRadius: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                channel.title,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text(
                channel.description,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 14),
              ),
            ),
          ],
        );
      },
    );
  }
}
