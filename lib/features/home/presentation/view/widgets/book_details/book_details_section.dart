import 'package:bookly_app/core/helper/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import 'book_details_actions.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("The Jungle Book", style: Styles.textStyle30),
        const SizedBox(height: 8),
        Text(
          "Rudyard Kipling",
          style: Styles.textStyle18.copyWith(
            color: Styles.offwhite1,
          ),
        ),
        const SizedBox(height: 17),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [BookRating()],
        ),
        const SizedBox(height: 37),
        const BookDetailsActions(),
      ],
    );
  }
}
