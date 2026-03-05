import 'package:bookly_app/core/utils/assets_path.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(AssetsPath.book1)),
              ),
            ),
          ),
          Column(
            children: [
              Text("Dan Brown"),
              Text("Origin"),
              Row(children: [Text("19.99\$"), SizedBox(width: 10), Text("")]),
            ],
          ),
        ],
      ),
    );
  }
}
