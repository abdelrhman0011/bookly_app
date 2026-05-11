import 'package:bookly_app/features/home/presentation/mangers/bestsellerboks_cubit/bestseller_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestsellerBooksCubit, BestsellerBooksState>(
      builder: (context, state) {
         if (state is BestsellerBooksSuccess) { 
          return ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: state.books.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 6.0,
                vertical: 10,
              ),
              child: BestSellerListViewItem(

                book: state.books[index],
              ),
            );
          },
        );
      } else if (state is BestsellerBooksError) {
          return Center(child: Text(state.errorMessage));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
