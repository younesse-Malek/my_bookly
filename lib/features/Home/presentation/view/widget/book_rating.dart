import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bookly/Core/Utils/styles.dart';

class BookReating extends StatelessWidget {
  const BookReating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.avrgRataing,
    required this.countRataing,
  });
  final MainAxisAlignment mainAxisAlignment;
  final num avrgRataing;
  final int countRataing;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Colors.amberAccent,
        ),
        const SizedBox(width: 6.3),
        Text('$avrgRataing', style: Stayles.textstyle16),
        const SizedBox(width: 5),
        Opacity(
          opacity: .5,
          child: Text(
            '($countRataing)',
            style: Stayles.textstyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
