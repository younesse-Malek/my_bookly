import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_bookly/features/Home/data/models/book_moudel/book_moudel.dart';
import 'package:my_bookly/features/Home/data/repo/home_repos.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void> featchFeaturedbooks() async {
    emit(FeaturedBooksLodaing());
    var resulte = await homeRepo.fetchFeatureBooks();
    
    resulte.fold(
      (feailure) {
        emit(FeaturedBooksFailure(errMessage: feailure.message));
      },
      (books) {
        emit(FeaturedBooksSucces(listBooks: books));
      },
    );
   
      
     }
}
