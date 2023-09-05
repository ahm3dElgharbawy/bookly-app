import 'package:bookly_app/core/helper/functions/custom_url_launcher.dart';
import 'package:bookly_app/core/helper/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../data/models/book_model/book_model.dart';
import '../custom_button.dart';

class BookDetailsActions extends StatelessWidget {
  const BookDetailsActions({super.key,required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Expanded(
            child: CustomButton(
              onPressed: (){},
              title: "Free",
              backgroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              style: Styles.textStyle18,
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: (){
                customUrlLauncher(url: book.volumeInfo.previewLink);
              },
              title: "Free Preview",
              backgroundColor: const Color(0xffEF8262),
              foregroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              style: Styles.textStyle16,
            ),
          ),
        ],
      ),
    );
  }
}
