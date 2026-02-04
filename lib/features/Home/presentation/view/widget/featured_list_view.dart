import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/Core/widget/custom_error_widget.dart';
import 'package:my_bookly/Core/widget/custom_lodaing_indicator.dart';
import 'package:my_bookly/features/Home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/custoum_book_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSucces) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,

            child: ListView.builder(
              itemCount: state.listBooks.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8),
                  child: CustoumBookimage(imageUrl:state.listBooks[index].volumeInfo.imageLinks
        ?.thumbnail??''
     ,),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrMesaage(errMessage: state.errMessage);
        } else {
          return  CustomLodaingIndicator();
        }
      },
    );
  }
}
