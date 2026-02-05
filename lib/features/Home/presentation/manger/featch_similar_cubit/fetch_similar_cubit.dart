import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_bookly/features/Home/data/models/book_moudel/book_moudel.dart';
import 'package:my_bookly/features/Home/data/repo/home_repos.dart';

part 'fetch_similar_state.dart';

class FetchSimilarCubit extends Cubit<FetchSimilarState> {
  FetchSimilarCubit(this.homeRepo) : super(FetchSimilarInitial());
  final HomeRepo homeRepo;

    Future<void> fetchSimilarBooks({required String gateGory}) async {
      emit(FetchSimilarLodaing());
      var result = await homeRepo.fetchSimilarBooks(gategory: gateGory);
      result.fold(
        (failuer) {
          emit(FetchSimilarFailure(errMessage: failuer.message));
        },
        (books) {
          emit(FetchSimilarSucces(books: books));
        },
      );
    }
}
