import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/blocs.dart';
import '../../../../configs/routes/router.dart';
import '../../../sheets/sheets.dart';

class NewsAppbarWidget extends StatelessWidget {
  const NewsAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appConfig = context.watch<AppConfigBloc>().state.config;
    return SliverAppBar(
        floating: false,
        pinned: true,
        elevation: 1,
        centerTitle: true,
        expandedHeight: 220,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'Noticias ${appConfig?.app?.appName}',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 12),
        ),
        flexibleSpace: BlocBuilder<NewsBloc, NewsState>(
          builder: (context, state) {
            if (state.news.isEmpty) {
              return Container();
            }
            return FlexibleSpaceBar(
              centerTitle: true,
              background: InkWell(
                onTap: () => NewsSheet.newsSheet(
                    context: navigator.context, news: state.news.first),
                child: Container(
                    margin: const EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(state.news.first.enclosure),
                      fit: BoxFit.cover,
                    ))),
              ),
            );
          },
        ));
  }
}
