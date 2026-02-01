import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_bookly/Core/Utils/service_api.dart';
import 'package:my_bookly/Core/error/failure.dart';
import 'package:my_bookly/features/Home/data/models/book_moudel/book_moudel.dart';
import 'package:my_bookly/features/Home/data/repo/home_repos.dart';

class HomRepoImpl implements HomeRepo {
  final ServiceApi serviceapi;

  HomRepoImpl(this.serviceapi);
  @override
  fetchNewestBooks() async {
    try {
      var data = await serviceapi.get(
        endPoint:
            'volumes?q=subject:programming&Sorting=newest&Filtering=free-ebooks',
      );
      List<BookMoudel> bookList = [];
      for (var item in data['items']) {
        bookList.add(BookMoudel.fromJson(item));
      }
      return right(bookList);
    }  catch (e) {
     if(e is DioException)
     {
      return left(ServiseFailure.fromDioException(e)
      );
     }
      else
      {
        return left(ServiseFailure(e.toString()
        ));
      }
      
     }
    }
    
   

  @override
  Future<Either<Failure, List<BookMoudel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
}
