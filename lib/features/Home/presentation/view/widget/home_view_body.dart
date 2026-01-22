import 'package:flutter/material.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/app_bar_home.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/custoum_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustoumAppBar(),
        CustoumListViewitem(),
      ],
    );
  }
}

