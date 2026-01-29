import 'package:flutter/material.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/book_details_section.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/appbar_book_details.dart';

import 'package:my_bookly/features/Home/presentation/view/widget/similar_book_details.dart';

class BookdetailsBody extends StatelessWidget {
  const BookdetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CoustomAppBarDetails(),
                const BooksDetailsSection(),
                Expanded(child: const SizedBox(height: 50)),
                const SimilarBooksDatails(),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
