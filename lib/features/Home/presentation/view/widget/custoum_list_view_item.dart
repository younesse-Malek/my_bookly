import 'package:flutter/material.dart';
import 'package:my_bookly/Core/Utils/assets.dart';

class CustoumListViewitem extends StatelessWidget {
  const CustoumListViewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.6 / 4.2,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.red,

            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.testimage),
            ),
          ),
        ),
      ),
    );
  }
}
