import 'package:dartz/dartz.dart';
import 'package:my_bookly/Core/error/failure.dart';
import 'package:my_bookly/features/Home/data/models/book_moudel/book_moudel.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookMoudel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookMoudel>>> fetchFeatureBooks();
}
