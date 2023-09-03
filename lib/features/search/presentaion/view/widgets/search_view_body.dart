import 'package:flutter/material.dart';

import '../../../../home/presentation/view/widgets/best_seller/best_seller_list_view_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomSearchTextField(),
          SizedBox(height: 16),
          Text("Search Result"),
          SizedBox(height: 16),
          SearchResultListView()
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i) => const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: BestSellerListViewItem(),
        ),
      ),
    );
  }
}
