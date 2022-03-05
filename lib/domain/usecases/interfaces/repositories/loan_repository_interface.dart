import 'package:monitest/domain/entities/primitives/api_response_data.dart';

abstract class LoanRepositoryInterface {
  Future requestForloan();
  Future<ResponseData> getData();
}
