import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/helper/app_routes.dart';
import 'package:bookly_app/core/helper/assets_data.dart';
import 'package:bookly_app/core/helper/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kBookDetailsView);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 120,
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: kBoxDecorationWithRadius8,
              child: Image.asset(
                AssetsData.book4,
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Text(
                      "Harry Potter \nand the Goblet of Fire",
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGTSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    "J.K. Rowling",
                    style: Styles.textStyle14.copyWith(color: Styles.offwhite1),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        "19.99 \$",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 40),
                      const BookRating()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
