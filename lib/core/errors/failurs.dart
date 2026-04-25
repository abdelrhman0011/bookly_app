import 'package:dio/dio.dart';


abstract class Failures {
  final String errMessage;

  Failures(this.errMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Request was cancelled');

      case DioExceptionType.unknown:
        return ServerFailure(
          'An unknown error occurred: ${dioError.message}',
        );

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate (SSL issue)');

      case DioExceptionType.connectionError:
        return ServerFailure('Connection error, check your internet');
      default:
        return ServerFailure('An error occurred, try later');}
  }
 factory ServerFailure.fromResponse(int statusCode , dynamic response){
  if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
    return ServerFailure(response['error']['message']);
  }else if (statusCode == 404) {
    return ServerFailure(' you request Not found, try later');
  } else if (statusCode == 500) {
    return ServerFailure('Internal Server Error, try later');
  } else {
    return ServerFailure('An error occurred, try later');
  }
 }
}