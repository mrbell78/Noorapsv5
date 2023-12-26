class GlobalNotice {
  final bool? success;
  final String? message;
  final List<Data>? data;

  GlobalNotice({
    this.success,
    this.message,
    this.data,
  });

  GlobalNotice.fromJson(Map<String, dynamic> json)
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
  final String? title;
  final String? body;
  final String? image;
  final String? publishedAt;

  Data({
    this.id,
    this.title,
    this.body,
    this.image,
    this.publishedAt,
  });

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        title = json['title'] as String?,
        body = json['body'] as String?,
        image = json['image'] as String?,
        publishedAt = json['published_at'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'title' : title,
    'body' : body,
    'image' : image,
    'published_at' : publishedAt
  };
}