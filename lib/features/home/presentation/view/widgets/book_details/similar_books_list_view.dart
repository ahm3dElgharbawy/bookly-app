import 'package:bookly_app/core/helper/assets_data.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'similar_books_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.16,
            child: ListView.builder(
              itemCount: state.similarBooks.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) => SimilarBooksListViewItem(imageUrl: state.similarBooks[i].volumeInfo.imageLinks?.thumbnail),
            ),
          );
        }
        else if (state is SimilarBooksFailure){
          return CustomErrorWidget(errorMsg: state.errorMsg);
        }
        else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
