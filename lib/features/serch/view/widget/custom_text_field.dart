
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CostumTextField extends StatelessWidget {
  const CostumTextField({super.key, this.onSubmitted, required this.controller});
  final Function(String)? onSubmitted;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller ,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'serch',
        suffixIcon: Opacity(
          opacity: .8,

          child: IconButton(
            onPressed: () {
              onSubmitted?.call(controller.text);
            },
            icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 21),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
