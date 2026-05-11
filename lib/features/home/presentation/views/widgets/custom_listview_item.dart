import 'package:bookly_app/core/utils/assets_path.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeatuerdListViewItem extends StatelessWidget {
  final String imageUrl;
  const FeatuerdListViewItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),

        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => Image.asset(AssetsPath.book1),
        
          ),
      )
        
    );
  }
}
