// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponseModel _$RegisterResponseModelFromJson(
  Map<String, dynamic> json,
) => RegisterResponseModel(
  status: json['status'] as String,
  message: json['message'] as String,
  data: RegisterDataModel.fromJson(json['data'] as Map<String, dynamic>),
);

RegisterDataModel _$RegisterDataModelFromJson(Map<String, dynamic> json) =>
    RegisterDataModel(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      user: RegisterUserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

RegisterUserModel _$RegisterUserModelFromJson(Map<String, dynamic> json) =>
    RegisterUserModel(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      mobile: json['mobile'] as String,
      birthdate: json['birthdate'] as String,
      avatar: json['avatar'] as String,
      role: json['role'] as String,
    );
