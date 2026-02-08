import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/Core/Utils/styles.dart';
import 'package:my_bookly/features/serch/view/manager/serch_book_cubit/serch_book_cubit.dart';
import 'package:my_bookly/features/serch/view/widget/custom_text_field.dart';
import 'package:my_bookly/features/serch/view/widget/serch_history_book.dart';

class SerchViewBody extends StatelessWidget {
  const SerchViewBody({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           CostumTextField(
            controller: BlocProvider.of<SerchBookCubit>(context).controller,
            onSubmitted: (data) {
              BlocProvider.of<SerchBookCubit>(context).serchBook(title: data) ;
              
            },
          ),
          const SizedBox(height: 16),
          Text('Best Seller', style: Stayles.textstyle18),
          const SizedBox(height: 16),
          Expanded(child: const SerchHistoryBook()),
        ],
      ),
    );
  }
}
