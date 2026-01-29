import 'package:flutter/material.dart';
import 'package:my_bookly/Core/Utils/styles.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/book_rating.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/books_action.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/custoum_book_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustoumBookimage(),
        ),
        const SizedBox(height: 43),
        Text(
          'The Jungle Book',
          style: Stayles.textstyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),

        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Stayles.textstyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 18),

        const BookReating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),

        const BooksAction(),
      ],
    );
  }
}

