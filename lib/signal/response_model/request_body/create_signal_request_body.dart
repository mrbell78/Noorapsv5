


class CreateSignalRequestBody{

 late String _type;
  late String  _signalName;
  late String  _signalAbout;
  late List<signalPackage>  _package;

  String get type => _type;

  set type(String value) {
    _type = value;
  }

  String get signalName => _signalName;

  List<signalPackage> get package => _package;

  set package(List<signalPackage> value) {
    _package = value;
  }

  String get signalAbout => _signalAbout;

  set signalAbout(String value) {
    _signalAbout = value;
  }

  set signalName(String value) {
    _signalName = value;
  }


 Map<String, dynamic> toJson(){
   return {
     "type": this.type,
     "signalName": this.signalName,
     "signalAbout": this.signalAbout,
     'package' : package?.map((e) => e.toJson()).toList(),
   };
 }

}

class signalPackage {

  String? packagePrice;
  int ? packageId;

  signalPackage(this.packagePrice, this.packageId);


  Map<String, dynamic> toJson(){
    return {
      "packagePrice": this.packagePrice,
      "packageId": this.packageId
    };
  }
}

