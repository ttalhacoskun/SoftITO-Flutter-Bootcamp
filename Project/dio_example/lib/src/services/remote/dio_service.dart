// import 'package:dio/dio.dart';
// import 'package:dio/io.dart';
// import 'package:dio_example/src/models/user/user_model.dart';
// import 'package:injectable/injectable.dart';

// @singleton
// class DioService with DioMixin {
//   @override
//   late BaseOptions options = BaseOptions(baseUrl: 'http://10.99.1.25:3000');

//   @override
//   late HttpClientAdapter httpClientAdapter = IOHttpClientAdapter();

//   Future<List<UserModel>> getUsers() async {
//     final response = (await get('/users')).data;
//     List<UserModel> userList =
//         (response as List).map((e) => UserModel.fromJson(e)).toList();

//     return userList;
//   }
// }
