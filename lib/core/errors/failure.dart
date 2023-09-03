import 'package:dio/dio.dart';

class Failure {
  final String errorMsg;
  Failure(this.errorMsg);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMsg);
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with api");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timout with api");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad certificate");
      case DioExceptionType.badResponse:
        return ServerFailure("Bad response");
      case DioExceptionType.cancel:
        return ServerFailure("Request to server was canceled");
      case DioExceptionType.connectionError:
        return ServerFailure("Check internet connection");
      case DioExceptionType.unknown:
        return ServerFailure("Unknown error");
      default:
        return ServerFailure.fromResponse(dioException.response!.statusCode, dioException.response!.data);
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("Your request not found, try again later");
    } else if (statusCode == 500) {
      return ServerFailure("Internal server error, try again later");
    } else {
      return ServerFailure("Oops error, Try again later");
    }
  }
}
