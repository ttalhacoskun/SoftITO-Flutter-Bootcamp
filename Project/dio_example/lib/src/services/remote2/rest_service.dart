import 'package:dio/dio.dart';
import 'package:dio_example/src/services/remote2/auth_client.dart';
import 'package:dio_example/src/services/remote2/user_client.dart';
import 'package:injectable/injectable.dart';

@singleton
class RestService {
  late final _dio = Dio(BaseOptions(baseUrl: 'http://10.99.1.25:3000'));

  late UserClient user = UserClient(_dio);

  late AuthClient auth = AuthClient(_dio);
}
