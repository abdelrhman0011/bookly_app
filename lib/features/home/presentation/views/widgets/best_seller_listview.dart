import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder (
      padding: EdgeInsets.zero,
       shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets. symmetric(horizontal: 6.0, vertical: 10),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}