part of 'fetch_similar_cubit.dart';

sealed class FetchSimilarState extends Equatable {
  const FetchSimilarState();

  @override
  List<Object> get props => [];
}

final class FetchSimilarInitial extends FetchSimilarState {}

final class FetchSimilarSucces extends FetchSimilarState {
  final List<BookMoudel> books;

 const FetchSimilarSucces({required this.books});
}

final class FetchSimilarLodaing extends FetchSimilarState {}

final class FetchSimilarFailure extends FetchSimilarState {
  final String errMessage;

  const FetchSimilarFailure({required this.errMessage});
}
