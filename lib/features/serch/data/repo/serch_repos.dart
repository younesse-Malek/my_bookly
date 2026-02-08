 import 'package:dartz/dartz.dart';
import 'package:my_bookly/Core/error/failure.dart';
import 'package:my_bookly/features/Home/data/models/book_moudel/book_moudel.dart';

abstract class SerchRepos{

  Future<Either<Failure,List<BookMoudel>>> serchBooks({required String title});

  
 }