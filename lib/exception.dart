import 'package:dio/dio.dart';

class AppException extends DioError implements Exception {
  @override
  String message;

  AppException(this.message)
      : super(requestOptions: RequestOptions(path: "path")) {
    message = response?.data['message'] ?? message;
  }

  @override
  String toString() => 'AppException(message: $message)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AppException && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
