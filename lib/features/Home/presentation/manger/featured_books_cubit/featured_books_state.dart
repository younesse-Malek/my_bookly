part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLodaing extends FeaturedBooksState {}

final class FeaturedBooksSucces extends FeaturedBooksState {
 final List<BookMoudel> listBooks;

 const FeaturedBooksSucces({required this.listBooks});
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;

 const FeaturedBooksFailure({required this.errMessage});
}
