import 'package:monitest/domain/entities/primitives/api_response_data.dart';
import 'package:monitest/domain/usecases/interfaces/repositories/loan_repository_interface.dart';

class LoanRepositoryMockImplement extends LoanRepositoryInterface {
  @override
  Future<ResponseData> getData() {
    // TODO: implement getData
    throw UnimplementedError();
  }

  @override
  Future requestForloan() {
    // TODO: implement requestForloan
    throw UnimplementedError();
  }
}
