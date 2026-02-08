import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:my_bookly/features/Home/data/models/book_moudel/book_moudel.dart';
import 'package:my_bookly/features/serch/data/repo/serch_repos.dart';

part 'serch_book_state.dart';

class SerchBookCubit extends Cubit<SerchBookState> {
  SerchBookCubit(this.serchrepo) : super(SerchBookInitial());

  final SerchRepos serchrepo;
  final TextEditingController controller = TextEditingController();
  Future<void> serchBook({required String title}) async {
    emit(SerchBookLodaing());
    var result = await serchrepo.serchBooks(title: title);

    result.fold(
      (failure) {
        emit(SerchBooFailure(errMessage: failure.message));
      },
      (books) {
        emit(SerchBookSucces(books: books));
      },
    );
  }

  @override
  Future<void> close() {
    print('Controller close');
    controller.dispose();
    return super.close();
  }
}
