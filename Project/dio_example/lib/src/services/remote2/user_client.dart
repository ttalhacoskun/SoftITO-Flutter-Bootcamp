import 'package:dio/dio.dart';
import 'package:dio_example/src/models/user/user_model.dart';

class UserClient {
  final Dio _dio;

  UserClient(this._dio);

  Future<List<UserModel>> getUsers() async {
    final response = (await _dio.get('/users')).data;
    List<UserModel> userList =
        (response as List).map((e) => UserModel.fromJson(e)).toList();

    return userList;
  }
}
