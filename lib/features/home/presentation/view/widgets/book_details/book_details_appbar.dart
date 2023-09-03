import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              context.pop(true);
            },
            icon: const Icon(Icons.close),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),
    );
  }
}