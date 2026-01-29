import 'package:flutter/material.dart';
import 'package:my_bookly/features/presentation/view/serch_view_body.dart';

class SerchView extends StatelessWidget {
  const SerchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SerchViewBody(),
    );
  }
}