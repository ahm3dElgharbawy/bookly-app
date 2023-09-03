import 'package:bookly_app/features/home/presentation/view/widgets/book_details/book_details_section.dart';
import 'package:flutter/material.dart';

import 'book_details_appbar.dart';
import 'book_details_book_image.dart';
import 'similar_books_section.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            BookDetailsAppBar(),
            BookDetailsBookImage(),
            BookDetailsSection(),
            Expanded(child: SizedBox(height: 30)),
            SimilarBooksSection()
          ],
        ),
      ),
    );
  }
}
