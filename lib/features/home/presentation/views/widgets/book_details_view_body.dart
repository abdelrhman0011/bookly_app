import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rate.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_listview_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          CustomBookDetailesAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.27),
            child: FeatuerdListViewItem(),
          ),
          SizedBox(height: 43,),
          Text("The Jungle Book",
          style: Styles.textstyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6,),
          Text("Rudyard Kipling",
          style: Styles.textstyle18.copyWith(color: Colors.grey),
         

          ),
          SizedBox(height: 15,),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(height: 37,),
          BooksAction(),
        ],
      ),
    );
  }
}

