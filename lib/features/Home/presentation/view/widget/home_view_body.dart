import 'package:flutter/material.dart';
import 'package:my_bookly/Core/Utils/styles.dart';
import 'package:my_bookly/Core/Utils/assets.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/app_bar_home.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/best_seller_list_view_item.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustoumAppBar(),
          FeaturedListView(),
          SizedBox(height: 45),
          Text('Best Seller', style: Stayles.textstyle18),
          SizedBox(height: 20),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

