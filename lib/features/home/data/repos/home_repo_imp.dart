import 'package:dartz/dartz.dart';

import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

import 'package:bookly_app/core/errors/failure.dart';

import 'home_repo.dart';

class HomeRepoImp extends HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  
}