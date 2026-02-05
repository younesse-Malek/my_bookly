import 'package:flutter/material.dart';
import 'package:my_bookly/Core/Utils/styles.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/app_bar_home.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/newset_book_list_view.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(), 
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustoumAppBar(),
              ),
              FeaturedListView(),
              SizedBox(height: 45),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),

                child: Text('Newset Books', style: Stayles.textstyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(

            padding: const EdgeInsets.symmetric(horizontal: 30),

            child: NewsetBooksListView(),
          ),
        ),
      ],
    );
  }
}
