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