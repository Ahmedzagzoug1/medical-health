import 'package:json_annotation/json_annotation.dart';

part 'base_response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true,
createToJson: true)

class BaseResponseModel<T> {
  final String status;
  final String message;
  final T? data;

  const BaseResponseModel({
    required this.status,
    required this.message,
    this.data,
  });

  factory BaseResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseResponseModelFromJson(json, fromJsonT);


}