import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/features/Home/presentation/view/book_details_view.dart';
import 'package:my_bookly/features/Home/presentation/view/home_view.dart';
import 'package:my_bookly/features/Splash/presentation/View/splash_view.dart';

abstract class AppRoutes {
  static const  kBookDetails = '/BookDetails';
  static const  kHomeView = '/Homeview';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (Context, state) => const Splashview()),
      GoRoute(path: kBookDetails,
      builder: (Context,state)=> const BookDetailsView()),
       GoRoute(path: kHomeView,
      builder: (Context,state)=> const HomePage()
      ),
    ],
  );
}
