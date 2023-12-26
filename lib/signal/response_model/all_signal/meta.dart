import 'links_parent.dart';

class Meta {
  final int? currentPage;
  final int? from;
  final int? lastPage;
  final List<Links>? links;
  final String? path;
  final int? perPage;
  final int? to;
  final int? total;

  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  Meta.fromJson(Map<String, dynamic> json)
      : currentPage = json['current_page'] as int?,
        from = json['from'] as int?,
        lastPage = json['last_page'] as int?,
        links = (json['links'] as List?)?.map((dynamic e) => Links.fromJson(e as Map<String,dynamic>)).toList(),
        path = json['path'] as String?,
        perPage = json['per_page'] as int?,
        to = json['to'] as int?,
        total = json['total'] as int?;

  Map<String, dynamic> toJson() => {
    'current_page' : currentPage,
    'from' : from,
    'last_page' : lastPage,
    'links' : links?.map((e) => e.toJson()).toList(),
    'path' : path,
    'per_page' : perPage,
    'to' : to,
    'total' : total
  };
}