import 'package:json_annotation/json_annotation.dart';
import 'package:medical_health_app/core/shared/data/base_response_model.dart';

part 'register_response_model.g.dart';

@JsonSerializable(createToJson: false
)
class RegisterResponseModel extends BaseResponseModel<RegisterDataModel> {
  const RegisterResponseModel({
    required super.status,
    required super.message,
    required RegisterDataModel super.data,
  });

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);

}

@JsonSerializable(createToJson: false)
class RegisterDataModel {
  final String accessToken;
  final String refreshToken;
  final RegisterUserModel user;

  const RegisterDataModel({
    required this.accessToken,
    required this.refreshToken,
    required this.user,
  });

  factory RegisterDataModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataModelFromJson(json);

}

@JsonSerializable(createToJson: false)
class RegisterUserModel {
  final String id;
  final String name;
  final String email;
  final String mobile;
  final String birthdate;
  final String avatar;
  final String role;

  const RegisterUserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    required this.birthdate,
    required this.avatar,
    required this.role,
  });

  factory RegisterUserModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserModelFromJson(json);

}
