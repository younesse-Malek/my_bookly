import 'package:flutter/material.dart';
import 'package:my_bookly/Core/Utils/Styles.dart';
import 'package:my_bookly/Core/Utils/assets.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/app_bar_home.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),

      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustoumAppBar(),
          FeaturedListView(),
          SizedBox(height: 45),
          Text('Best Seller', style: Stayles.titleMediem),
          SizedBox(height: 25),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 130,
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testimage),
                ),
              ),
            ),
          ),
        ),
        Column(children: []),
      ],
    );
  }
}
