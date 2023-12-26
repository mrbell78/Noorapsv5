class ExchangeNameModel {
  final bool? success;
  final String? message;
  final List<Data>? data;

  ExchangeNameModel({
    this.success,
    this.message,
    this.data,
  });

  ExchangeNameModel.fromJson(Map<String, dynamic> json)
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
  final String? name;
  final String? logoUrl;
  final bool? isActive;

  Data({
    this.id,
    this.name,
    this.logoUrl,
    this.isActive,
  });

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        logoUrl = json['logo_url'] as String?,
        isActive = json['is_active'] as bool?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'logo_url' : logoUrl,
    'is_active' : isActive
  };
}