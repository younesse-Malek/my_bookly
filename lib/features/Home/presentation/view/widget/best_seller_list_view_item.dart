import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/Core/Utils/app_routes.dart';
import 'package:my_bookly/Core/Utils/assets.dart';
import 'package:my_bookly/Core/Utils/styles.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/book_rating.dart';
import 'package:my_bookly/features/constanse.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kBookDetails);
      },
      child: Row(
        children: [
          SizedBox(
            height: 130,
            child: AspectRatio(
              aspectRatio: 2.6 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.testimage),
                  ),
                ),
              ),
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
                    'Harry Potter and the Goblet of Fire',
                    style: Stayles.textstyle20.copyWith(
                      fontFamily: kGTSectraFine,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 3),
                const Text('j.k.Rowling', style: Stayles.textstyle14),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      '19.99 £',
                      style: Stayles.textstyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    BookReating(),
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
