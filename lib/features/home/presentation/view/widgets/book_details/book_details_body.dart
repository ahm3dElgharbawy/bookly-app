import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_details/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import 'book_details_appbar.dart';
import 'similar_books_section.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const BookDetailsAppBar(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 120,vertical: 20),
              child: CustomBookImage(
                imageUrl: book.volumeInfo.imageLinks?.thumbnail,
              ),
            ),
            // BookDetailsBookImage(),
            BookDetailsSection(
              book: book,
            ),
            const SizedBox(height: 30),
            const SimilarBooksSection()
          ],
        ),
      ),
    );
  }
}
