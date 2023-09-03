import 'package:bookly_app/core/helper/api_service.dart';
import 'package:dartz/dartz.dart';

import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

import 'package:bookly_app/core/errors/failure.dart';

import 'home_repo.dart';

class HomeRepoImp extends HomeRepo {
  final ApiService apiService;
  HomeRepoImp({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endPoints:
            "volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming",
      );
      List<BookModel> books = BookModel.parse(data: data);
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
