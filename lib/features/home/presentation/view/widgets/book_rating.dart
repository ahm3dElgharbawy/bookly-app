import 'package:bookly_app/core/helper/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.averageRating, required this.ratingCount});
  final num averageRating;
  final int ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star_rounded,
          size: 19,
          color: Colors.yellow,
        ),
        const SizedBox(width: 5),
        Text(
          averageRating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 6),
        Text(
          "($ratingCount)",
          style: Styles.textStyle14.copyWith(color: Styles.offwhite2),
        )
      ],
    );
  }
}
