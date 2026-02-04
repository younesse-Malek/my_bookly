import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/Core/widget/custom_error_widget.dart';
import 'package:my_bookly/Core/widget/custom_lodaing_indicator.dart';
import 'package:my_bookly/features/Home/presentation/manger/newest_book_cubit/newest_books_cubit.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/bookr_list_view_item.dart';

class NewsetBooksListView extends StatelessWidget {
  const NewsetBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSucces) {
          return ListView.builder(
            padding: EdgeInsets.zero,

            itemCount: state.listBooks.length,

            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BooksListItem(bookModel: state.listBooks[index]),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrMesaage(errMessage: state.errMessage);
        } else {
          return const CustomLodaingIndicator();
        }
      },
    );
  }
}
