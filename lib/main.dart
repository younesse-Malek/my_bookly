import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bookly/Core/Utils/app_routes.dart';
import 'package:my_bookly/Core/Utils/service_locator.dart';
import 'package:my_bookly/features/Home/data/repo/hom_repo_implement.dart';
import 'package:my_bookly/features/Home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:my_bookly/features/Home/presentation/manger/newest_book_cubit/newest_books_cubit.dart';
import 'package:my_bookly/features/constanse.dart';

void main() {
  SetupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
    
      providers: [
      
       BlocProvider(create: (context) => FeaturedBooksCubit(getIt.get<HomRepoImpl>())..featchFeaturedbooks()),
        BlocProvider(create: (context) =>NewestBooksCubit(getIt.get<HomRepoImpl>())),
       
       ],
    
       
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: kPraimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
