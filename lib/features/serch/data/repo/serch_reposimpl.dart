import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_bookly/Core/Utils/service_api.dart';
import 'package:my_bookly/Core/error/failure.dart';
import 'package:my_bookly/features/Home/data/models/book_moudel/book_moudel.dart';
import 'package:my_bookly/features/serch/data/repo/serch_repos.dart';

class SerchRepoImpl implements SerchRepos {
  @override
  final ServiceApi service;

  SerchRepoImpl({required this.service});

  Future<Either<Failure, List<BookMoudel>>> serchBooks({
    required String title,
  }) async {
    try {
      var data = await service.get(
        endPoint:
            'volumes?q=$title&Sorting=relevance&Filtering=free-ebooks&key=AIzaSyCcXDY_tOJV4doiTLlRQBdL9iqU239hdZg',
      );
      List<BookMoudel> books = [];
      for (var item in data['items']) {
        books.add(BookMoudel.fromJson(item));
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServiseFailure.fromDioException(e));
    } catch (e) {
      return left(ServiseFailure('Unexpected error occurred'));
    }
  }
}
