import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/Core/Utils/app_routes.dart';
import 'package:my_bookly/Core/widget/custom_error_widget.dart';
import 'package:my_bookly/Core/widget/custom_lodaing_indicator.dart';
import 'package:my_bookly/features/Home/presentation/manger/featch_similar_cubit/fetch_similar_cubit.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/custoum_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,

      child: BlocBuilder<FetchSimilarCubit, FetchSimilarState>(
        builder: (context, state) {
          if (state is FetchSimilarSucces) {
            return ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
          onTap:()=> GoRouter.of(context).push(AppRoutes.kBookDetails,extra: state.books[index] ),
                    
                    child: CustoumBookimage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                          'https://media.gettyimages.com/id/1300072335/fr/photo/solider-femelle-darm%C3%A9e-saluant-contre-le-ciel-de-coucher-du-soleil.jpg?s=612x612&w=0&k=20&c=XylDOzfedR4zBDIiuezZJRd7X4K7M5X_Q9AnwMhfgaQ=',
                    ),
                  ),
                );
              },
            );
          } else if (state is FetchSimilarFailure) {
            return CustomErrMesaage(errMessage: state.errMessage);
          } else {
            return const CustomLodaingIndicator();
          }
        },
      ),
    );
  }
}
