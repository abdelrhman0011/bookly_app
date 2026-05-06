import 'package:bookly_app/core/widgets/loding_indicator.dart';
import 'package:bookly_app/features/home/presentation/mangers/FuaturedBooks_cubit/fuaturedbooks_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FuaturedBooksListView extends StatelessWidget {
  const FuaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FuaturedbooksCubit, FuaturedbooksState>(
      builder: (context, state) {
        if (state is FuaturedbooksLoading) {
          return const LodingIndicator();
        } else if (state is FuaturedbooksError) {
          return Center(child: Text(state.errorMessage));
        } else if (state is FuaturedbooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .24,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: FeatuerdListViewItem(
                    imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              },
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
