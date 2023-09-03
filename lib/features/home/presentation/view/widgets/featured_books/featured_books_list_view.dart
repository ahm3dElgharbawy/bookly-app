import 'package:bookly_app/core/helper/assets_data.dart';
import 'package:flutter/material.dart';

import 'featured_books_list_view_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          FeaturedBooksListViewItem(imageName: AssetsData.book1),
          FeaturedBooksListViewItem(imageName: AssetsData.book2),
          FeaturedBooksListViewItem(imageName: AssetsData.book3),
        ],
      ),
    );
  }
}
