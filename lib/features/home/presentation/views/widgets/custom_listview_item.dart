import 'package:bookly_app/core/utils/assets_path.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(image: AssetImage(AssetsPath.book1)),
          ),
        ),
      ),
    );
  }
}
