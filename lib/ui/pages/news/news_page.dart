import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/blocs.dart';
import '../../../configs/routes/router.dart';
import '../../../utils/utils.dart';
import '../../sheets/sheets.dart';
import 'widgets/widgets.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const NewsAppbarWidget(),
        SliverToBoxAdapter(
          child: BlocBuilder<NewsBloc, NewsState>(
            builder: (context, state) {
              if (state.news.isEmpty) {
                return Container();
              }
              final news = state.news.first;
              String dateString =
                  AppDateFormat.appDateFormat(date: news.pubDate);
              return Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 30),
                child: InkWell(
                  onTap: () => NewsSheet.newsSheet(
                      context: navigator.context, news: state.news.first),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        news.title,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        '${dateString}h',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SliverToBoxAdapter(
          child: MultiNewsWidget(),
        )
      ],
    );
  }
}
