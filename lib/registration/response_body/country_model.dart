class CountryModel {
  final bool? success;
  final String? message;
  final List<Data>? data;

  CountryModel({
    this.success,
    this.message,
    this.data,
  });

  CountryModel.fromJson(Map<String, dynamic> json)
      : success = json['success'] as bool?,
        message = json['message'] as String?,
        data = (json['data'] as List?)?.map((dynamic e) => Data.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'success' : success,
    'message' : message,
    'data' : data?.map((e) => e.toJson()).toList()
  };
}

class Data {
  final int? id;
  final String? code;
  final String? name;
  final String? phoneCode;

  Data({
    this.id,
    this.code,
    this.name,
    this.phoneCode,
  });

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        code = json['code'] as String?,
        name = json['name'] as String?,
        phoneCode = json['phone_code'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'code' : code,
    'name' : name,
    'phone_code' : phoneCode
  };
}