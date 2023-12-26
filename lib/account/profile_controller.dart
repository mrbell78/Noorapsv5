import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:nurhossen_s_application5/account/profile_repository.dart';
import 'package:nurhossen_s_application5/account/response_model/user_model.dart';
import 'package:nurhossen_s_application5/registration/response_body/country_model.dart' as cs;

import '../../http-service/api_response.dart';
import '../../locator/locator.dart';
import '../utils_prv/pref.dart';


class ProfileController extends ChangeNotifier{

  var _profile_repo = locator<ProfileRepository>();
  List<cs.Data>   countryList =[];


  UserModel? userModel ;

  File? image;




  updateUser(UserModel userinfo) async {
    EasyLoading.show(status: "Updating..");
    var apiresponse = await _profile_repo.updateUser(userinfo);
    if(apiresponse.httpCode==200){
      EasyLoading.dismiss();
    }
  }

  userLogout() async {
    await Pref.remove("userid");
    await Pref.remove("firsttime");
    var apiresponse = await _profile_repo.userLogout();
    if(apiresponse.data.data["success"]==true){
      await Pref.remove("userid");
      await Pref.remove("firsttime");
    }
  }

  getCountryList()async{
    var apiresponse = await _profile_repo.getCountryList();
    if(apiresponse.httpCode==200){
      countryList.clear();
      print("the obj is .....   ${apiresponse.data.data?.length}");
      // var lclist = apiresponse.data.data
      countryList.addAll(apiresponse.data.data!);
    }
    notifyListeners();

  }

  getUserInfo() async {
    var apiresponse = await _profile_repo.getUserInfo();

    userModel = apiresponse.data;
    print("user model data . ${userModel?.data?.name}");
    notifyListeners();
  }

  uploadImage(BuildContext context) async {

    EasyLoading.show(status: "Uploading..");
    if(image!=null && image!.path.isNotEmpty){
      FormData formData = FormData.fromMap({
        "avatar": await MultipartFile.fromFile(
          image!.path,
          filename: "image.jpg",
        ),
      });

      var apiresPonse = await _profile_repo.uploadImage(formData);
      print("the status is ${apiresPonse.data?.data["success"]}");
      if(apiresPonse.data?.data["success"]){
        EasyLoading.dismiss();
        Navigator.pop(context);
      }
      EasyLoading.dismiss();

    }

  }
}