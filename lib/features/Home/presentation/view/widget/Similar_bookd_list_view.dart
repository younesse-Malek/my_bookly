import 'package:flutter/material.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/custoum_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustoumBookimage(
              imageUrl:
                  'https://www.reddit.com/r/AskPhotography/comments/1eftu0r/what_was_the_best_photo_youve_ever_taken/',
            ),
          );
        },
      ),
    );
  }
}
