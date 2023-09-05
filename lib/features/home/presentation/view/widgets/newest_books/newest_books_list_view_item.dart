import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/helper/app_routes.dart';
import 'package:bookly_app/core/helper/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../book_rating.dart';

class NewestBooksListViewItem extends StatelessWidget {
  final BookModel newestBooks;
  const NewestBooksListViewItem({super.key, required this.newestBooks});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(
          AppRoutes.kBookDetailsView,
          extra: newestBooks,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 120,
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: kBoxDecorationWithRadius8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CustomBookImage(
                  imageUrl: newestBooks.volumeInfo.imageLinks?.thumbnail,
                  radius: 10,
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Text(
                      newestBooks.volumeInfo.title!,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGTSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    newestBooks.volumeInfo.authors![0],
                    style: Styles.textStyle14.copyWith(color: Styles.offwhite1),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 40),
                      BookRating(
                        averageRating:
                            newestBooks.volumeInfo.averageRating ?? 0,
                        ratingCount: newestBooks.volumeInfo.ratingsCount ?? 0,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
