import 'package:dio/dio.dart';
import 'dart:io';

abstract class Failure {
  final String errorsMessage;
  Failure({required this.errorsMessage});
}

class ServeurFailure extends Failure {
  ServeurFailure({required super.errorsMessage});

  factory ServeurFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServeurFailure(
            errorsMessage: 'Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServeurFailure(errorsMessage: 'Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServeurFailure(errorsMessage: 'Receive timeout with ApiServer');

      case DioExceptionType.badResponse:
        if (dioError.response != null) {
          return ServeurFailure.fromResponse(
              dioError.response!.statusCode ?? 500, dioError.response!.data);
        }
        return ServeurFailure(errorsMessage: "Invalid server response.");

      case DioExceptionType.cancel:
        return ServeurFailure(
            errorsMessage: 'Request to ApiServer was cancelled');

      case DioExceptionType.connectionError:
        return ServeurFailure(
            errorsMessage: "Connection error with the server");

      case DioExceptionType.unknown:
        if (dioError.error is SocketException) {
          return ServeurFailure(errorsMessage: "No Internet Connection");
        }
        return ServeurFailure(
            errorsMessage: "Unexpected Error, please try later");
      default:
        return ServeurFailure(
            errorsMessage: "Oops, there was an error. Please try again.");
    }
  }

  factory ServeurFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServeurFailure(
          errorsMessage:
              response['error']['message'] ?? "Authentication error.");
    } else if (statusCode == 404) {
      return ServeurFailure(
          errorsMessage: "Your request was not found, please try later!");
    } else if (statusCode == 500) {
      return ServeurFailure(
          errorsMessage: "Internal Server error, please try later!");
    } else {
      return ServeurFailure(
          errorsMessage: "Oops, there was an error. Please try again.");
    }
  }
}
