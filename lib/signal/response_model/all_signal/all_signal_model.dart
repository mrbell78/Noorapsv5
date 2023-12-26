import 'data_parent.dart';
class AllSingnalModel {
  final bool? success;
  final String? message;
  final Data? data;

  AllSingnalModel({
    this.success,
    this.message,
    this.data,
  });

  AllSingnalModel.fromJson(Map<String, dynamic> json)
      : success = json['success'] as bool?,
        message = json['message'] as String?,
        data = (json['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['data'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'success' : success,
    'message' : message,
    'data' : data?.toJson()
  };
}











