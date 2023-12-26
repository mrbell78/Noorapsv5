class UserModel {
  final bool? success;
  final String? message;
  late final Data? data;

  UserModel({
    this.success,
    this.message,
    this.data,
  });

  UserModel.fromJson(Map<String, dynamic> json)
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
  late final String? name;
  final String? email;
  late final String? phone;
  late final String? gender;
  final bool? isVerified;
  final bool? isActive;
  final String? avatar;
  final String? roboticRank;
  final bool? roboticSubscribed;
  final dynamic roboticBotId;
  final double? balance;
  final String? referralCode;
  final Country? country;

  Data({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.isVerified,
    this.isActive,
    this.avatar,
    this.roboticRank,
    this.roboticSubscribed,
    this.roboticBotId,
    this.balance,
    this.referralCode,
    this.country,
  });

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        email = json['email'] as String?,
        phone = json['phone'] as String?,
        gender = json['gender'] as String?,
        isVerified = json['is_verified'] as bool?,
        isActive = json['is_active'] as bool?,
        avatar = json['avatar'] as String?,
        roboticRank = json['robotic_rank'] as String?,
        roboticSubscribed = json['robotic_subscribed'] as bool?,
        roboticBotId = json['robotic_bot_id'],
        balance = json['balance'] as double?,
        referralCode = json['referral_code'] as String?,
        country = (json['country'] as Map<String,dynamic>?) != null ? Country.fromJson(json['country'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'email' : email,
    'phone' : phone,
    'gender' : gender,
    'is_verified' : isVerified,
    'is_active' : isActive,
    'avatar' : avatar,
    'robotic_rank' : roboticRank,
    'robotic_subscribed' : roboticSubscribed,
    'robotic_bot_id' : roboticBotId,
    'balance' : balance,
    'referral_code' : referralCode,
    'country' : country?.toJson()
  };
}

class Country {
  final int? id;
  final String? code;
  late final String? name;
  final String? phoneCode;

  Country({
    this.id,
    this.code,
    this.name,
    this.phoneCode,
  });

  Country.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        code = json['code'] as String?,
        name = json['name'] as String?,
        phoneCode = json['phone_code'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'code' : code,
    'name' : name,
    'phone_code' : phoneCode
  };
}