part of 'serch_book_cubit.dart';

sealed class SerchBookState extends Equatable {
  const SerchBookState();

  @override
  List<Object> get props => [];
}

final class SerchBookInitial extends SerchBookState {}

final class SerchBookLodaing extends SerchBookState {}

final class SerchBookSucces extends SerchBookState {
  final List<BookMoudel> books;

 const SerchBookSucces({required this.books});
}

final class SerchBooFailure extends SerchBookState {
  final String errMessage;

  const SerchBooFailure({required this.errMessage});
}
