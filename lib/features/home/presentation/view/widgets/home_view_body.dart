import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/helper/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

import 'newest_books/newest_books_list_view.dart';
import 'featured_books/featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: HomeAppBar(),
          pinned: true,
          actions: null,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          expandedHeight: 70,
          backgroundColor: kPrimaryColor,
        ),
        SliverToBoxAdapter(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FeaturedBooksListView(),
                Padding(
                  padding: EdgeInsets.only(left: 25, top: 51, bottom: 20),
                  child: Text(
                    "Best Seller",
                    style: Styles.textStyle18,
                  ),
                ),
              ]),
        ),
        const SliverToBoxAdapter(child: NewestBooksListView())
      ],
    );
  }
}
