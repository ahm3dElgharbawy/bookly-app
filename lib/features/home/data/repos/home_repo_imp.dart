import 'package:bookly_app/core/helper/api_service.dart';
import 'package:dartz/dartz.dart';

import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

import 'package:bookly_app/core/errors/failure.dart';
import 'package:dio/dio.dart';

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
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
    try {
      var data = await apiService.get(
        endPoints:
            "volumes?Filtering=free-ebooks&q=subject:programming",
      );
      List<BookModel> books = BookModel.parse(data: data);
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
