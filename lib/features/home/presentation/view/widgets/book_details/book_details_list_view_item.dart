import 'package:flutter/material.dart';

class BookDetailsListViewItem extends StatelessWidget {
  final String imageName;
  const BookDetailsListViewItem({super.key, required this.imageName});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imageName),
          ),
        ),
      ),
    );
  }
}
