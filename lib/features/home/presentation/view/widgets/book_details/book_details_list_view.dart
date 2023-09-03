import 'package:bookly_app/core/helper/assets_data.dart';
import 'package:flutter/material.dart';

import 'book_details_list_view_item.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          BookDetailsListViewItem(imageName: AssetsData.book1),
          BookDetailsListViewItem(imageName: AssetsData.book2),
          BookDetailsListViewItem(imageName: AssetsData.book3),
          BookDetailsListViewItem(imageName: AssetsData.book1),
          BookDetailsListViewItem(imageName: AssetsData.book2),
          BookDetailsListViewItem(imageName: AssetsData.book3),
        ],
      ),
    );
  }
}
