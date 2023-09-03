import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/helper/assets_data.dart';
import 'package:flutter/material.dart';

class BookDetailsBookImage extends StatelessWidget {
  const BookDetailsBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return AspectRatio(
      aspectRatio: 2 / 1.5,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 36, horizontal: width * 0.3),
        decoration: kBoxDecorationWithRadius20.copyWith(
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AssetsData.book1),
          ),
        ),
      ),
    );
  }
}
