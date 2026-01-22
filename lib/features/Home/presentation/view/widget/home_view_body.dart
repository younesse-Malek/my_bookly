import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bookly/Core/Utils/assets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
        child: Row(
          children: [
            Image.asset(AssetsData.logo, height: 20),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 26),
            ),
          ],
        ),
      ),
    );
  }
}
