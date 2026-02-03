import 'package:flutter/material.dart';
import 'package:my_bookly/Core/widget/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),

      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              sizeText: 19,
              titleText: '19,99 £',
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
              titleText: 'Free Preview',
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
}
