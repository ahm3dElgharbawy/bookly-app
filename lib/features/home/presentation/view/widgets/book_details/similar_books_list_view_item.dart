import 'package:flutter/material.dart';

import '../custom_book_image.dart';

class SimilarBooksListViewItem extends StatelessWidget {
  final String? imageUrl;
  const SimilarBooksListViewItem({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
        return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: CustomBookImage(imageUrl: imageUrl),
    );
  }
}
