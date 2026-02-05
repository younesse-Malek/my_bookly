import 'package:flutter/material.dart';
import 'package:my_bookly/Core/Utils/styles.dart';
import 'package:my_bookly/features/Home/data/models/book_moudel/book_moudel.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/book_rating.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/books_action.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/custoum_book_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});
  final BookMoudel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustoumBookimage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? "",
          ),
        ),
        const SizedBox(height: 43),
        Text(
          bookModel.volumeInfo.title!,
          style: Stayles.textstyle30.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 6),

        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors![0],
            style: Stayles.textstyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 18),

        BookReating(
          mainAxisAlignment: MainAxisAlignment.center,
          avrgRataing: bookModel.volumeInfo.averageRating ?? 0,
          countRataing: bookModel.volumeInfo.ratingsCount ?? 0,
        ),
        const SizedBox(height: 37),

        const BooksAction(),
      ],
    );
  }
}
