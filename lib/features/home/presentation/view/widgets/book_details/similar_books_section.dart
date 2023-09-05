import 'package:bookly_app/core/helper/styles.dart';
import 'package:flutter/material.dart';

import 'similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "You can also like",
            style: Styles.textStyle14,
          ),
          SizedBox(height: 20),
          SimilarBooksListView()
        ],
      ),
    );
  }
}
