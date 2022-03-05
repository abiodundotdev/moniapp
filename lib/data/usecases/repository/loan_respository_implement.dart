import 'package:dio/dio.dart';
import 'package:monitest/domain/entities/primitives/api_response_data.dart';
import 'package:monitest/domain/usecases/interfaces/repositories/loan_repository_interface.dart';
import 'package:monitest/services/dio_http_request.dart';

class LoanRepositoryImplement implements LoanRepositoryInterface {
  @override
  Future<ResponseData> getData() async {
    Response response = await AppDio(reqAuth: false).get(url: "/loans");
    print(response.data);
    return ResponseData.fromJson(response.data);
  }

  @override
  Future requestForloan() {
    // TODO: implement requestForloan
    throw UnimplementedError();
  }
}
