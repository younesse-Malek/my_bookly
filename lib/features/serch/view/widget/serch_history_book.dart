import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/Core/widget/custom_error_widget.dart';
import 'package:my_bookly/Core/widget/custom_lodaing_indicator.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/bookr_list_view_item.dart';
import 'package:my_bookly/features/serch/view/manager/serch_book_cubit/serch_book_cubit.dart';

class SerchHistoryBook extends StatelessWidget {
  const SerchHistoryBook({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SerchBookCubit, SerchBookState>(
      builder: (context, state) {
        if (state is SerchBookSucces) {
          return ListView.builder(
            itemCount: state.books.length,

            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: BooksListItem(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is SerchBooFailure) {
          return CustomErrMesaage(errMessage: state.errMessage);
        } else {
          return const CustomLodaingIndicator();
        }
      },
    );
  }
}
