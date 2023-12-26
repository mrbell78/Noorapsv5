class GlobalSeetings {
  final bool? success;
  final String? message;
  final Data? data;

  GlobalSeetings({
    this.success,
    this.message,
    this.data,
  });

  GlobalSeetings.fromJson(Map<String, dynamic> json)
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
  final String? systemName;
  final String? systemSlogan;
  final String? systemEmail;
  final String? systemLogo;
  final bool? maintenanceMode;
  final int? appMinimumVersion;
  final int? appLatestVersion;

  Data({
    this.systemName,
    this.systemSlogan,
    this.systemEmail,
    this.systemLogo,
    this.maintenanceMode,
    this.appMinimumVersion,
    this.appLatestVersion,
  });

  Data.fromJson(Map<String, dynamic> json)
      : systemName = json['system_name'] as String?,
        systemSlogan = json['system_slogan'] as String?,
        systemEmail = json['system_email'] as String?,
        systemLogo = json['system_logo'] as String?,
        maintenanceMode = json['maintenance_mode'] as bool?,
        appMinimumVersion = json['app_minimum_version'] as int?,
        appLatestVersion = json['app_latest_version'] as int?;

  Map<String, dynamic> toJson() => {
    'system_name' : systemName,
    'system_slogan' : systemSlogan,
    'system_email' : systemEmail,
    'system_logo' : systemLogo,
    'maintenance_mode' : maintenanceMode,
    'app_minimum_version' : appMinimumVersion,
    'app_latest_version' : appLatestVersion
  };
}