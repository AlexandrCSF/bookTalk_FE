import 'package:dio/dio.dart';

class ApiException {
  final String message;

  const ApiException({required this.message});
}

class NetworkConnectionError extends ApiException {
  const NetworkConnectionError() : super(message: 'Netwotk Connection Error');
}

class ConnectionTimeoutError extends ApiException {
  const ConnectionTimeoutError() : super(message: 'Request Timeout Error');
}

class BadCertificateError extends ApiException {
  const BadCertificateError() : super(message: 'Bad Certificate Error');
}

abstract class HandleException {

  static ApiException handleException(DioException e) {
    print(e.message);
    switch(e.type) {
      case DioExceptionType.connectionError:
        return const NetworkConnectionError();
      case DioExceptionType.connectionTimeout:
        return const ConnectionTimeoutError();
      case DioExceptionType.badCertificate:
        return const BadCertificateError();
      default:
        return const ApiException(message: 'Unknown Error');
    }
  }

}