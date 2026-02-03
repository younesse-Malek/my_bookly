import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_bookly/features/Home/data/models/book_moudel/book_moudel.dart';
import 'package:my_bookly/features/Home/data/repo/home_repos.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

    Future<void> FetchNewstBooks() async {
      emit(NewestBooksLoading());
      var result = await homeRepo.fetchNewestBooks();
      result.fold(
        (failuer) {
          emit(NewestBooksFailure(errMessage: failuer.message));
        },
        (books) {
          emit(NewestBooksSucces(listBooks: books));
        },
      );
    }
  }



