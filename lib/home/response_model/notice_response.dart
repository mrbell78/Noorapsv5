class NoticeModel {
  final int? id;
  final String? title;
  final String? body;
  final dynamic image;
  final bool? isRead;
  final String? date;

  NoticeModel({
    this.id,
    this.title,
    this.body,
    this.image,
    this.isRead,
    this.date,
  });

  NoticeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        title = json['title'] as String?,
        body = json['body'] as String?,
        image = json['image'],
        isRead = json['is_read'] as bool?,
        date = json['date'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'title' : title,
    'body' : body,
    'image' : image,
    'is_read' : isRead,
    'date' : date
  };
}