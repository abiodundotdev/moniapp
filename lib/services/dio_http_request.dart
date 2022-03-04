import 'package:dio/dio.dart';
import 'package:monitest/constants/constants.dart';
import 'package:monitest/domain/interfaces/interfaces.dart';
import 'package:monitest/environment.dart';
import 'package:monitest/services/service.dart';

String _baseUrl =
    environment.isDev ? Endpoints.baseUrlDev : Endpoints.baseUrlProd;

class AppDio implements HttpClientInterface {
  final Dio appdio;
  final bool hasHeader;
  final bool reqAuth;
  AppDio({this.hasHeader = false, this.reqAuth = false})
      : appdio = Dio(BaseOptions(baseUrl: _baseUrl));

  @override
  Future<Response> post({url, bool hasHeader = false, Map? data}) async {
    String token = await SharedPrefs.getString("token");
    return await appdio.post(
      url,
      data: data,
      options: Options(
        headers: reqAuth
            ? {"Authorization": "Bearer $token", 'Charset': 'utf-8'}
            : {},
      ),
    );
  }

  @override
  Future<Response> get({url, hasHeader}) async {
    String token = await SharedPrefs.getString("token");
    return await appdio.get(
      url,
      options: Options(
        headers: reqAuth
            ? {"Authorization": "Bearer $token", 'Charset': 'utf-8'}
            : {},
      ),
    );
  }

  @override
  Future<Response> delete({url, hasHeader}) async {
    String token = await SharedPrefs.getString("token");
    return await appdio.delete(
      url,
      options: Options(
        headers: reqAuth
            ? {"Authorization": "Bearer $token", 'Charset': 'utf-8'}
            : {},
      ),
    );
  }
}

class AppOptions {
  String baseUrl;
  bool hasHeaders = false;
  AppOptions(this.baseUrl, this.hasHeaders);
  BaseOptions get options {
    Map<String, dynamic> headers = hasHeaders ? {} : {};
    return BaseOptions(baseUrl: baseUrl, headers: headers);
  }
}
