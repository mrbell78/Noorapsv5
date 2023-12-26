class UserRegistrationModel {
  final bool? success;
  final String? message;
  final Data? data;

  UserRegistrationModel({
    this.success,
    this.message,
    this.data,
  });

  UserRegistrationModel.fromJson(Map<String, dynamic> json)
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
  final String? token;
  final User? user;

  Data({
    this.token,
    this.user,
  });

  Data.fromJson(Map<String, dynamic> json)
      : token = json['token'] as String?,
        user = (json['user'] as Map<String,dynamic>?) != null ? User.fromJson(json['user'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'token' : token,
    'user' : user?.toJson()
  };
}

class User {
  final String? name;
  final String? email;
  final String? phone;
  final String? gender;
  final bool? isVerified;
  final bool? isActive;
  final dynamic avatar;
  final dynamic rank;
  final dynamic country;

  User({
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.isVerified,
    this.isActive,
    this.avatar,
    this.rank,
    this.country,
  });

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        email = json['email'] as String?,
        phone = json['phone'] as String?,
        gender = json['gender'] as String?,
        isVerified = json['is_verified'] as bool?,
        isActive = json['is_active'] as bool?,
        avatar = json['avatar'],
        rank = json['rank'],
        country = json['country'];

  Map<String, dynamic> toJson() => {
    'name' : name,
    'email' : email,
    'phone' : phone,
    'gender' : gender,
    'is_verified' : isVerified,
    'is_active' : isActive,
    'avatar' : avatar,
    'rank' : rank,
    'country' : country
  };
}