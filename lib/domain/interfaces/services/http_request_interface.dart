import 'package:dio/dio.dart';

abstract class HttpClientInterface {
  Future<Response> post();
  Future<Response> get();
  Future<Response> delete();
}
