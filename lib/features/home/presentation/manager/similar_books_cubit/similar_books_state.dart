part of 'similar_books_cubit.dart';

class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}
class SimilarBooksLoading extends SimilarBooksState {}
class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> similarBooks;
  const SimilarBooksSuccess({required this.similarBooks});
}
class SimilarBooksFailure extends SimilarBooksState {
  final String errorMsg;
  const SimilarBooksFailure({required this.errorMsg});
}
