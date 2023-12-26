class SliderModel {
  final bool? success;
  final String? message;
  late final List<Data>? data;

  SliderModel({
    this.success,
    this.message,
    this.data,
  });

  SliderModel.fromJson(Map<String, dynamic> json)
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
  final String? title;
  final String? image;

  Data({
    this.title,
    this.image,
  });

  Data.fromJson(Map<String, dynamic> json)
      : title = json['title'] as String?,
        image = json['image'] as String?;

  Map<String, dynamic> toJson() => {
    'title' : title,
    'image' : image
  };
}