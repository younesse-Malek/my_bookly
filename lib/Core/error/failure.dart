import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  Failure(this.message);
}

class ServiseFailure extends Failure {
  ServiseFailure(super.message);

  factory ServiseFailure.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServiseFailure('Connection timeout with API server');

      case DioExceptionType.sendTimeout:
        return ServiseFailure('Send timeout with API server');

      case DioExceptionType.receiveTimeout:
        return ServiseFailure('Receive timeout with API server');

      case DioExceptionType.badCertificate:
        return ServiseFailure('Bad SSL certificate');

      case DioExceptionType.badResponse:
        return ServiseFailure.fromResponse(
          e.response?.statusCode,
          e.response?.data,
        );

      case DioExceptionType.cancel:
        return ServiseFailure('Request was cancelled');

      case DioExceptionType.connectionError:
        return ServiseFailure('No internet connection');

      case DioExceptionType.unknown:
        return ServiseFailure('Unexpected error occurred');

      default:
        return ServiseFailure('Something went wrong');
    }
  }

  factory ServiseFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServiseFailure(
        response?['error']?['message'] ?? 'Unauthorized request',
      );
    } else if (statusCode == 404) {
      return ServiseFailure('Requested resource not found');
    } else if (statusCode == 500) {
      return ServiseFailure('Internal server error, please try later');
    } else if (statusCode == 429) {
      return ServiseFailure(
        'Too many requests. Please wait and try again later',
      );
    } else {
      return ServiseFailure('Oops! Something went wrong, please try again');
    }
  }
}
