import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bookly/Core/Utils/styles.dart';

class BookReating extends StatelessWidget {
  const BookReating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(FontAwesomeIcons.solidStar, color: Colors.amberAccent),
        const SizedBox(width: 5.6),
        const Text('4.8', style: Stayles.textstyle16),
        const SizedBox(width: 4),
        Text(
          '(245)',
          style: Stayles.textstyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
