import 'package:json_annotation/json_annotation.dart';
import 'package:medical_health_app/core/shared/data/base_response_model.dart';

part 'login_response_model.g.dart';

@JsonSerializable(createToJson: false
)
class LoginResponseModel extends BaseResponseModel<LoginDataModel> {
  const LoginResponseModel({
    required super.status,
    required super.message,
    required LoginDataModel super.data,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

}

@JsonSerializable(createToJson: false)
class LoginDataModel {
  final String accessToken;
  final String refreshToken;
  final LoginUserModel user;

  const LoginDataModel({
    required this.accessToken,
    required this.refreshToken,
    required this.user,
  });

  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModelFromJson(json);

}

@JsonSerializable(createToJson: false)
class LoginUserModel {
  final String id;
  final String name;
  final String email;
  final String mobile;
  final String birthdate;
  final String avatar;
  final String role;

  const LoginUserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    required this.birthdate,
    required this.avatar,
    required this.role,
  });

  factory LoginUserModel.fromJson(Map<String, dynamic> json) =>
      _$LoginUserModelFromJson(json);

}
