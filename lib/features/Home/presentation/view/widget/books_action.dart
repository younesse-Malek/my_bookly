import 'package:flutter/material.dart';
import 'package:my_bookly/Core/Utils/fonction/launch_url.dart';
import 'package:my_bookly/Core/widget/custom_button.dart';
import 'package:my_bookly/features/Home/data/models/book_moudel/book_moudel.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookMoudel});
  final BookMoudel bookMoudel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),

      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: null,
              sizeText: 19,
              titleText: 'Free',
              backGroundColor: Colors.white,
              colorText: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                launchCustomUrl(context, bookMoudel.volumeInfo.previewLink);
              },
              titleText: getText(bookMoudel),
              backGroundColor: Color(0xffEF8262),
              colorText: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookMoudel bookMoudel) {
    if (bookMoudel.volumeInfo.previewLink == null) {
      return 'Not Avalible';
    }

    return 'Free Pteview';
  }
}
