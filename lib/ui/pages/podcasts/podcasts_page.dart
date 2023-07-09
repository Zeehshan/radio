import 'package:flutter/material.dart';

import 'widgtes/widgets.dart';

class PodcastsPage extends StatelessWidget {
  const PodcastsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: MultiChannelWidget()),
        SliverToBoxAdapter(
          child: PodcastChannelWidget(),
        ),
        SliverToBoxAdapter(child: SongsWidget())
      ],
    );
  }
}
