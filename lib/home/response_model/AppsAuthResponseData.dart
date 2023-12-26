class AppsAuth {
  final bool? success;
  final String? message;
  final Data? data;

  AppsAuth({
    this.success,
    this.message,
    this.data,
  });

  AppsAuth.fromJson(Map<String, dynamic> json)
      : success = json['success'] as bool?,
        message = json['message'] as String?,
        data = (json['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['data'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'success' : success,
    'message' : message,
    'data' : data?.toJson()
  };
}

class Data {
  final int? code;
  final int? userId;

  Data({
    this.code,
    this.userId,
  });

  Data.fromJson(Map<String, dynamic> json)
      : code = json['code'] as int?,
        userId = json['user_id'] as int?;

  Map<String, dynamic> toJson() => {
    'code' : code,
    'user_id' : userId
  };
}