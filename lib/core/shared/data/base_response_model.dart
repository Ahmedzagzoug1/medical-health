import 'package:json_annotation/json_annotation.dart';

part 'base_response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
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

  // التعديل هنا: جعل الـ Function تقبل T بدلاً من T? وتغيير المسمى ليتطابق مع التوليد التلقائي
  Map<String, dynamic> toJson(
    Object? Function(T value) toJsonT,
  ) =>
      _$BaseResponseModelToJson(this, toJsonT);
}