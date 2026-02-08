import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/Core/Utils/app_routes.dart';

import 'package:my_bookly/Core/Utils/styles.dart';
import 'package:my_bookly/features/Home/data/models/book_moudel/book_moudel.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/book_rating.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/custoum_book_item.dart';
import 'package:my_bookly/features/constanse.dart';

class BooksListItem extends StatelessWidget {
  const BooksListItem({super.key, required this.bookModel});
  final BookMoudel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { 

       GoRouter.of(context).push(AppRoutes.kBookDetails,extra: bookModel);

      },
      child: Row(
        children: [
          SizedBox(
            height: 130,
            child: CustoumBookimage(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    bookModel.volumeInfo.title!,
                    style: Stayles.textstyle20.copyWith(
                      fontFamily: kGTSectraFine,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  bookModel.volumeInfo.authors?[0]??'',
                  style: Stayles.textstyle14,
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Stayles.textstyle16.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    BookReating(
                      avrgRataing: bookModel.volumeInfo.averageRating ?? 0,
                      countRataing: bookModel.volumeInfo.ratingsCount ?? 0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
