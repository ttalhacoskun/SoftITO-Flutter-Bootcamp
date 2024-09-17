import 'package:dio_example/src/models/user/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  final String refreshToken;
  final String token;
  final int tokenExpires;
  final UserModel user;

  LoginResponseModel({
    required this.refreshToken,
    required this.token,
    required this.tokenExpires,
    required this.user,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}
