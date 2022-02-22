import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/app_constants.dart';
import '../constants/assets_path.dart';

class AvatarNetwork extends StatelessWidget {
  final String url;
  final int maxHeightDiskCache;
  final int maxWidthDiskCache;

  const AvatarNetwork(
      {Key? key,
      required this.url,
      this.maxHeightDiskCache = 80,
      this.maxWidthDiskCache = 80})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(78)),
        child: url.isEmpty
            ? SvgPicture.asset(icon_avatar)
            : CachedNetworkImage(
                maxHeightDiskCache: maxHeightDiskCache,
                maxWidthDiskCache: maxWidthDiskCache,
                imageUrl: url,
                fit: BoxFit.cover,
                fadeInCurve: Curves.easeIn,
                fadeInDuration: const Duration(milliseconds: 200),
                placeholder: (context, url) {
                  return Image(image: MemoryImage(kTransparentImage));
                },

                errorWidget: (context, url, error) {
                  return SvgPicture.asset(icon_avatar);
                },
              ));
  }
}
