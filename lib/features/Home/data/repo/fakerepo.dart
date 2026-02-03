import 'package:dartz/dartz.dart';
import 'package:my_bookly/Core/error/failure.dart';
import 'package:my_bookly/features/Home/data/models/book_moudel/book_moudel.dart';
import 'package:my_bookly/features/Home/data/repo/home_repos.dart';

class fakerepo implements HomeRepo
{
  @override
  Future<Either<Failure, List<BookMoudel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookMoudel>>> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
  
}