import 'package:flutter/material.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/bookr_list_view_item.dart';

class SerchResult extends StatelessWidget {
  const SerchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,

      itemCount: 10,

      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
         // child: BooksListItem(),
         child: Text('data'),
        );
      },
    );
  }
}
