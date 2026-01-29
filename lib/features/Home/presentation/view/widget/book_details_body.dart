import 'package:flutter/material.dart';
import 'package:my_bookly/Core/Utils/styles.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/Similar_bookd_list_view.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/book_rating.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/appbar_book_details.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/books_action.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/custoum_book_item.dart';

class BookdetailsBody extends StatelessWidget {
  const BookdetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CoustomAppBarDetails(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .2),
                  child: const CustoumBookimage(),
                ),
                const SizedBox(height: 43),
                Text(
                  'The Jungle Book',
                  style: Stayles.textstyle30.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),

                Opacity(
                  opacity: .7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Stayles.textstyle18.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(height: 18),

                const BookReating(mainAxisAlignment: MainAxisAlignment.center),
                const SizedBox(height: 37),

                const BooksAction(),
                Expanded(child: const SizedBox(height: 50)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Stayles.textstyle16.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const SimilarbooksListView(),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
