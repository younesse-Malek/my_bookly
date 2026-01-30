import 'package:go_router/go_router.dart';
import 'package:my_bookly/features/Home/presentation/view/book_details_view.dart';
import 'package:my_bookly/features/Home/presentation/view/home_view.dart';
import 'package:my_bookly/features/Splash/presentation/View/splash_view.dart';
import 'package:my_bookly/features/serch/view/serch_view.dart';

abstract class AppRoutes {
  static const  kBookDetails = '/BookDetails';
  static const  kHomeView = '/Homeview';
  static const  kSerchview = '/serchview';


  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const Splashview()),
      GoRoute(path: kBookDetails,
      builder: (context,state)=> const BookDetailsView()),
       GoRoute(path: kHomeView,
      builder: (context,state)=> const HomePage()
      ),
      GoRoute(path: kSerchview,
      builder: (context,state)=> const SerchView()),
    ],
  );
}
