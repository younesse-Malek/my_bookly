import 'package:flutter/material.dart';
import 'package:my_bookly/Core/Utils/styles.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.sildinanimation});

  final Animation<Offset> sildinanimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: sildinanimation,

      builder: (BuildContext context, _) {
        return SlideTransition(
          position: sildinanimation,
          child: const Text(
            'Read Free Books',
            textAlign: TextAlign.center,
            style: Stayles.textstyle18,
          ),
        );
      },
    );
  }
}
