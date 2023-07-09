import 'package:flutter/material.dart';
// ignore_for_file: prefer_contains, depend_on_referenced_packages

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/blocs.dart';
import '../../../../configs/routes/assets_path.dart';
import '../../../../configs/routes/router.dart';
import '../../../../utils/utils.dart';
import '../../../sheets/sheets.dart';
import '../../../widgets/widgets.dart';

class MultiNewsWidget extends StatelessWidget {
  const MultiNewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppConfigBloc>().state.config;
    if (app?.noticias?.mostrar != 'Si') {
      return Center();
    }
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (context, state) {
        if (state.manageUI.uiStatus == BlocStateUIStatus.loading &&
            state.news.isEmpty) {
          return Padding(
            padding: const EdgeInsets.only(top: 50),
            child: LoadingWidget(color: app!.app!.outstanding),
          );
        }
        if (state.news.isEmpty) {
          return Center(
            child: Text(
              'There is no any news available',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 14),
            ),
          );
        }

        int limit = int.parse(app!.noticias!.limite!);

        return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: (limit > 0 && limit < state.news.length)
                ? limit
                : state.news.length,
            itemBuilder: (context, index) {
              if (index == 0) return Container();
              final news = state.news[index];
              String dateString =
                  AppDateFormat.appDateFormat(date: news.pubDate);

              return InkWell(
                onTap: () =>
                    NewsSheet.newsSheet(context: navigator.context, news: news),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
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
                      const SizedBox(
                        width: 20,
                      ),
                      Hero(
                        key: Key(news.toString()),
                        tag: news.enclosure,
                        // child: NetworkImageWidget(
                        //   imageUrl: news.enclosure,
                        //   width: 60,
                        //   height: 70,
                        //   borderRadius: 0,
                        // ),
                        child: CachedNetworkImage(
                          imageUrl: news.enclosure,
                          width: 60,
                          height: 70,
                          alignment: Alignment.center,
                          fit: BoxFit.cover,
                          // imageBuilder: (context, imageProvider) => Container(
                          //   width: width,
                          //   height: height,
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(borderRadius ?? 18),
                          //     image: DecorationImage(
                          //       image: imageProvider,
                          //       fit: boxFit ?? BoxFit.cover,
                          //     ),
                          //   ),
                          // ),
                          placeholder: (context, url) => Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Center(
                                child: LoadingWidget(
                              color: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .color!,
                            )),
                          ),
                          errorWidget: (context, url, error) => SizedBox(
                            width: 60,
                            height: 70,
                            child: Image.asset(AssetsPath.appIcon),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            });
      },
    );
  }
}
