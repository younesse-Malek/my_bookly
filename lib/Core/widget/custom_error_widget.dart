import 'package:flutter/material.dart';
import 'package:my_bookly/Core/Utils/styles.dart';

class CustomErrMesaage extends StatelessWidget {
  const CustomErrMesaage({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return  Text(errMessage,style: Stayles.textstyle18,);
  }
}
