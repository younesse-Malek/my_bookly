import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bookly/features/constanse.dart';
import 'package:my_bookly/features/Splash/presentation/View/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kPraimaryColor,
      ),
      home: Splashview(),
    );
  }
}
