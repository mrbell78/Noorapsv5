class FollowModel {
  final bool? success;
  final String? message;
  final Data? data;

  FollowModel({
    this.success,
    this.message,
    this.data,
  });

  FollowModel.fromJson(Map<String, dynamic> json)
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
  final int? id;
  final String? uniqueId;
  final String? type;
  final String? name;
  final String? about;
  final String? image;
  final int? rating;
  final List<Packages>? packages;
  final bool? isFollowing;

  Data({
    this.id,
    this.uniqueId,
    this.type,
    this.name,
    this.about,
    this.image,
    this.rating,
    this.packages,
    this.isFollowing,
  });

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        uniqueId = json['unique_id'] as String?,
        type = json['type'] as String?,
        name = json['name'] as String?,
        about = json['about'] as String?,
        image = json['image'] as String?,
        rating = json['rating'] as int?,
        packages = (json['packages'] as List?)?.map((dynamic e) => Packages.fromJson(e as Map<String,dynamic>)).toList(),
        isFollowing = json['is_following'] as bool?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'unique_id' : uniqueId,
    'type' : type,
    'name' : name,
    'about' : about,
    'image' : image,
    'rating' : rating,
    'packages' : packages?.map((e) => e.toJson()).toList(),
    'is_following' : isFollowing
  };
}

class Packages {
  final int? id;
  final int? signalPackageId;
  final String? name;
  final int? price;
  final int? subscriptionDays;
  final String? combinedName;

  Packages({
    this.id,
    this.signalPackageId,
    this.name,
    this.price,
    this.subscriptionDays,
    this.combinedName,
  });

  Packages.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        signalPackageId = json['signal_package_id'] as int?,
        name = json['name'] as String?,
        price = json['price'] as int?,
        subscriptionDays = json['subscription_days'] as int?,
        combinedName = json['combined_name'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'signal_package_id' : signalPackageId,
    'name' : name,
    'price' : price,
    'subscription_days' : subscriptionDays,
    'combined_name' : combinedName
  };
}