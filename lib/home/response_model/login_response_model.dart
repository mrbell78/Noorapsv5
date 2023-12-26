class LoginResponseData {
  final bool? success;
  final String? message;
  final Data? data;

  LoginResponseData({
    this.success,
    this.message,
    this.data,
  });

  LoginResponseData.fromJson(Map<String, dynamic> json)
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
  final String? avatar;
  final String? rank;
  final Country? country;

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
        avatar = json['avatar'] as String?,
        rank = json['rank'] as String?,
        country = (json['country'] as Map<String,dynamic>?) != null ? Country.fromJson(json['country'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'name' : name,
    'email' : email,
    'phone' : phone,
    'gender' : gender,
    'is_verified' : isVerified,
    'is_active' : isActive,
    'avatar' : avatar,
    'rank' : rank,
    'country' : country?.toJson()
  };
}

class Country {
  final String? code;
  final String? name;
  final String? phoneCode;

  Country({
    this.code,
    this.name,
    this.phoneCode,
  });

  Country.fromJson(Map<String, dynamic> json)
      : code = json['code'] as String?,
        name = json['name'] as String?,
        phoneCode = json['phone_code'] as String?;

  Map<String, dynamic> toJson() => {
    'code' : code,
    'name' : name,
    'phone_code' : phoneCode
  };
}