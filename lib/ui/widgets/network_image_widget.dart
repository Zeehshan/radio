// ignore_for_file: prefer_contains, depend_on_referenced_packages

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class NetworkImageWidget extends StatelessWidget {
  final String? imageUrl;
  final double? width, height, borderRadius;
  final String? localImage;
  final BoxFit? boxFit;

  const NetworkImageWidget({
    Key? key,
    required this.imageUrl,
    this.width,
    this.height,
    this.borderRadius = 18,
    this.localImage,
    this.boxFit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 18),
      child: CachedNetworkImage(
        imageUrl: imageUrl ?? '',
        width: width,
        height: height,
        alignment: Alignment.center,
        fit: boxFit ?? BoxFit.cover,
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
            color: Theme.of(context).textTheme.titleLarge!.color!,
          )),
        ),
        errorWidget: (context, url, error) => Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: const Color(0xffCDD8E0),
              borderRadius: BorderRadius.circular(borderRadius ?? 12)),
          child: Center(
            child: Icon(
              Icons.image_outlined,
              color: Theme.of(context).colorScheme.background,
              size: 48,
            ),
          ),
        ),
      ),
    );
  }
}
