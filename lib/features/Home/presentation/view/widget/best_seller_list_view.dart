import 'package:flutter/material.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/best_seller_list_view_item.dart';

class BestSellerlistview extends StatelessWidget {
  const BestSellerlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,

      itemCount: 10,

      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}
