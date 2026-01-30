import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/Core/Utils/app_routes.dart';
import 'package:my_bookly/Core/Utils/assets.dart';

class CustoumAppBar extends StatelessWidget {
  const CustoumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, bottom: 17),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 20),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRoutes.kSerchview);
            },
            icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 23),
          ),
        ],
      ),
    );
  }
}
