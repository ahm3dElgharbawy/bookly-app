import 'package:bookly_app/core/helper/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import 'book_details_actions.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          book.volumeInfo.authors![0],
          style: Styles.textStyle18.copyWith(
            color: Styles.offwhite1,
          ),
        ),
        const SizedBox(height: 17),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BookRating(
              averageRating: book.volumeInfo.averageRating ?? 0,
              ratingCount: book.volumeInfo.ratingsCount ?? 0,
            )
          ],
        ),
        const SizedBox(height: 37),
        BookDetailsActions(book: book),
      ],
    );
  }
}
