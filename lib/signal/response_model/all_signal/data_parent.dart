import 'links_parent.dart';
import 'meta.dart';
import 'data_child.dart' as listdata;

class Data {
   List<listdata.Data>? data;
   Links? links;
   Meta? meta;

  Data({
    this.data,
    this.links,
    this.meta,
  });



   Data.fromJson(Map<String, dynamic> json)
      : data = (json['data'] as List?)?.map((dynamic e) => listdata.Data.fromJson(e as Map<String,dynamic>)).toList(),
        links = (json['links'] as Map<String,dynamic>?) != null ? Links.fromJson(json['links'] as Map<String,dynamic>) : null,
        meta = (json['meta'] as Map<String,dynamic>?) != null ? Meta.fromJson(json['meta'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'data' : data?.map((e) => e.toJson()).toList(),
    'links' : links?.toJson(),
    'meta' : meta?.toJson()
  };
}