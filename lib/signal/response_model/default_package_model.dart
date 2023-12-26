class DefaultSignalPackage {
  final bool? success;
  final String? message;
  final List<Data>? data;

  DefaultSignalPackage({
    this.success,
    this.message,
    this.data,
  });

  DefaultSignalPackage.fromJson(Map<String, dynamic> json)
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
  final int? subscriptionDays;

  Data({
    this.id,
    this.name,
    this.subscriptionDays,
  });

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        subscriptionDays = json['subscription_days'] as int?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'subscription_days' : subscriptionDays
  };
}