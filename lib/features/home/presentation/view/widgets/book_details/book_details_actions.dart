import 'package:bookly_app/core/helper/styles.dart';
import 'package:flutter/material.dart';

import '../custom_button.dart';

class BookDetailsActions extends StatelessWidget {
  const BookDetailsActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Expanded(
            child: CustomButton(
              title: "19.9\$",
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              style: Styles.textStyle18,
            ),
          ),
          Expanded(
            child: CustomButton(
              title: "Free Preview",
              backgroundColor: Color(0xffEF8262),
              foregroundColor: Colors.white,
              borderRadius: BorderRadius.only(
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
