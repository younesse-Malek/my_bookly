import 'package:flutter/material.dart';
import 'package:my_bookly/Core/Utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.titleText,
    required this.backGroundColor,
    this.borderRadius,
    this.sizeText,
    required this.colorText,
  });

  final String titleText;
  final Color backGroundColor;
  final Color colorText;

  final BorderRadiusGeometry? borderRadius;
  final double? sizeText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},

        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          titleText,
          style: Stayles.textstyle16.copyWith(
            color: colorText,
            fontSize: sizeText,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
