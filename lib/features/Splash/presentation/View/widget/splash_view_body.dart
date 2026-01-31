import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/Core/Utils/app_routes.dart';
import 'package:my_bookly/Core/Utils/assets.dart';
import 'package:my_bookly/features/Splash/presentation/View/widget/sliding_texxt.dart';

class Splashviewbody extends StatefulWidget {
  const Splashviewbody({super.key});

  @override
  State<Splashviewbody> createState() => _SplashviewbodyState();
}

class _SplashviewbodyState extends State<Splashviewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationControler;
  late Animation<Offset> sildinanimation;

  @override
  void initState() {
    initsilidinganimation();
    super.initState();

    navigateToHome();
  }

  @override
  void dispose() {
    animationControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlidingText(sildinanimation: sildinanimation),
      ],
    );
  }

  void initsilidinganimation() {
    animationControler = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    sildinanimation = Tween<Offset>(
      begin: Offset(0, 2),
      end: Offset(0, 0),
    ).animate(animationControler);
    animationControler.forward();
  }

  void navigateToHome() {
    Future.delayed(Duration(seconds: 3), () {
      GoRouter.of(context).go(AppRoutes.kHomeView);
    });
  }
}
