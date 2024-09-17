import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final int id;
  final String email;
  final String provider;
  final String? socialId;
  final String firstName;
  final String lastName;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final String? photo;

  @JsonKey(name: "__entity")
  final String entity;

  UserModel({
    required this.id,
    required this.email,
    required this.provider,
    this.socialId,
    required this.firstName,
    required this.lastName,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    this.photo,
    required this.entity,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
