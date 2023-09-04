part of 'newest_books_cubit.dart';

class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}
class NewestBooksLoading extends NewestBooksState {}
class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> newestBooks;
  const NewestBooksSuccess({required this.newestBooks});
}
class NewestBooksFailure extends NewestBooksState {
  final String errorMsg;
  const NewestBooksFailure({required this.errorMsg});
}
