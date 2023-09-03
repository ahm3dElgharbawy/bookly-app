import 'package:bookly_app/core/helper/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

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
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 6),
        Text(
          "(2390)",
          style: Styles.textStyle14.copyWith(color: Styles.offwhite2),
        )
      ],
    );
  }
}
