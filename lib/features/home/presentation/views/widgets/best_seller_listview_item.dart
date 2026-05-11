import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/assets_path.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/books_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rate.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.bookdetailsview);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .18,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: CachedNetworkImage(imageUrl: book.volumeInfo.imageLinks.thumbnail)
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      book.volumeInfo.title!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textstyle20,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    book.volumeInfo.authors?.first ?? "Unknown Author",
                    style: Styles.textstyle14.copyWith(color: Colors.grey),
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        "free",
                        style: Styles.textstyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 37),
                      BookRating(
                        
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
