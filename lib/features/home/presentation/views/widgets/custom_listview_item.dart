import 'package:bookly_app/core/utils/assets_path.dart';
import 'package:flutter/material.dart';

class FeatuerdListViewItem extends StatelessWidget {
  final String imageUrl;
  const FeatuerdListViewItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
          ),
        ),
        ),
        
    );
  }
}
