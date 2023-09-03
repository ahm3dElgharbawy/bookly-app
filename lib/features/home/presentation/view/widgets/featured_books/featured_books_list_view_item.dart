import 'dart:ui';

import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListViewItem extends StatelessWidget {
  final String imageName;
  const FeaturedBooksListViewItem({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: kBoxDecorationWithRadius20.copyWith(
            image: DecorationImage(
              image: AssetImage(imageName),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: const SizedBox(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.play_arrow_rounded,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
