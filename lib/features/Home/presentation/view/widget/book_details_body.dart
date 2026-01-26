import 'package:flutter/material.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/coustom_book_details.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/custoum_book_item.dart';

class BookdetailsBody extends StatelessWidget {
  const BookdetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CoustomAppBarDetails(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustoumBookimage(),
          ),
        ],
      ),
    );
  }
}
