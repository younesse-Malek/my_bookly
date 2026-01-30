import 'package:flutter/material.dart';
import 'package:my_bookly/Core/Utils/styles.dart';
import 'package:my_bookly/features/serch/view/widget/custom_text_field.dart';
import 'package:my_bookly/features/serch/view/widget/serch_result_list_view.dart';

class SerchViewBody extends StatelessWidget {
  const SerchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CostumTextField(),
          const SizedBox(height: 16),
          Text('Best Seller', style: Stayles.textstyle18),
          const SizedBox(height: 16),
          Expanded(child: const SerchResult()),
        ],
      ),
    );
  }
}
