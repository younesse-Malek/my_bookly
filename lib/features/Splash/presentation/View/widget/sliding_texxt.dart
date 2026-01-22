import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.sildinanimation,
  });

  final Animation<Offset> sildinanimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: sildinanimation,
    
      builder: (BuildContext context, _) {
        return SlideTransition(
          position: sildinanimation,
          child: Text(
            'Read Free Books',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
          ),
        );
      },
    );
  }
}
