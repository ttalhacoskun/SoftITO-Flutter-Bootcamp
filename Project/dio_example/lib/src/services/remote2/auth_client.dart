import 'package:dio/dio.dart';
import 'package:dio_example/src/models/auth/login/login_request_model.dart';
import 'package:dio_example/src/models/auth/login/login_response_model.dart';

class AuthClient {
  final Dio _dio;

  AuthClient(this._dio);

  Future<LoginResponseModel?> login(LoginRequestModel requestModel) async {
    try {
      final response = await _dio.post('/api/v1/auth/email/login',
          data: requestModel.toJson());

      return LoginResponseModel.fromJson(response.data);
    } catch (e) {
      if (e is DioException) {
        switch (e.response?.statusCode) {
          case 400:
            print('Kullanici adi veya sifre Hatali');
            break;
          default:
        }
      }
    }
    return null;
  }
}
