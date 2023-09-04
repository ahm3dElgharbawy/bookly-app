part of 'featured_books_cubit.dart';

class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> featuredbooks;
  const FeaturedBooksSuccess({required this.featuredbooks});
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMsg;
  const FeaturedBooksFailure({required this.errorMsg});
}
