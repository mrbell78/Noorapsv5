import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:nurhossen_s_application5/home/response_model/AppsAuthResponseData.dart';
import 'package:nurhossen_s_application5/home/response_model/exchange_name_model.dart' as exlist;
import 'package:nurhossen_s_application5/home/response_model/exchange_name_model.dart';
import 'package:nurhossen_s_application5/home/response_model/login_response_model.dart';
import 'package:nurhossen_s_application5/home/response_model/notice_response.dart';
import 'package:nurhossen_s_application5/home/response_model/slider_widget.dart';
import 'package:nurhossen_s_application5/registration/response_body/country_model.dart' as cs;
import 'package:provider/provider.dart';

import '../../http-service/api_response.dart';
import '../../locator/locator.dart';

import '../account/profile_controller.dart';
import '../account/response_model/user_model.dart';
import '../account/response_model/user_model.dart';
import '../general_model/global_notice.dart';
import '../general_model/global_settings.dart';
import '../registration/request_body/resiter_body_model.dart';
import '../registration/response_body/user_registration_model.dart';
import '../utils_prv/dialog/DialogCustom.dart';
import '../utils_prv/pref.dart';
import 'home_repository.dart';


class HomeController extends ChangeNotifier{

  var _login_repo = locator<HomeRepository>();

  AppsAuth? appsAuth;

  List<cs.Data> countryList =[];
  List<String> countryprocecssed = [];
  UserRegistrationModel? registerUserModel;
  GlobalNotice? globalNotice;
  LoginResponseData ? loginResponseData;

  SliderModel ?sliderModel;
  GlobalSeetings ? globalSeetings;

  late String _userid='';
  List<NoticeModel> noticeModel=[];
  List<exlist.Data>? exchangeList = [];
  String get userid => _userid;
  ExchangeNameModel? exchangeNameModel;

  var binanceData;

  String sendvcode= "Send verification code";

  bool isFirstTime = Pref.getBool("firsttime")??true;

  bool _userVerified = false;

  bool get userVerified => _userVerified;

  set userVerified(bool value) {
    _userVerified = value;
  }

  set userid(String value) {
    _userid = value;
  }

  Future<bool> setUserId(BuildContext context,String userName,String password)async{
    EasyLoading.show(status: "Login in progress ..");
    var apiresponse = await _login_repo.getUserId(userName,password);
    if(apiresponse.data?.data['success']==true){
      if(apiresponse.data?.data["data"]["token"]!=null && apiresponse.data?.data["data"]["token"]!=""){
        Pref.setString("userid", apiresponse.data?.data["data"]["token"]);
        userid= apiresponse.data?.data['data']['token'];
        notifyListeners();

      }
      EasyLoading.dismiss();
      sendVerificationCode("mail");
      notifyListeners();
      return true;

    }else{
      var errordata = apiresponse.data?.data;
      var msg  = errordata['errors'];
      if(errordata['message']!=null && errordata['message']!=""){
        //EasyLoading.showError("${errordata['message']} \n ${getMessge(msg)}",);
        DialogCustom.showAlertDialog(context,tittle:errordata['message'],message: getMessge(msg) );
        EasyLoading.dismiss();
        return false;

      }
      return false;

    }
    notifyListeners();
  }

  Future<bool?>getUserIdMethod()async{
   if(await Pref.getString("userid")!=null){
     //Pref.remove("userid");
     userid= (await Pref.getString("userid"))!;
     return true;
   }else {
     userid='';
     return false;
   }
  }

  sendVerificationCode(via) async {
    var apiresponse = await _login_repo.sendVerificationCode(via);
    if(apiresponse.data.data["success"]==true){
      sendvcode="verification code sent";
      EasyLoading.showInfo("verification code sent",duration: Duration(milliseconds: 600));
     // EasyLoading.dismiss();
    }
  }

  checkUserverification()async{
    if(await Pref.getBool("firsttime")==false){
      userVerified =true;
    }else{
      userVerified=false;
    }
  }

  Future<bool> verifyUser(otp) async {
    EasyLoading.show(status: "verification is in progress..");
    var apiresponse = await _login_repo.verifyUser(otp);
    if(apiresponse.data.data["success"]==true || apiresponse.data.data["message"]=="User already verified."){
      Pref.setBool("firsttime", false);
      EasyLoading.dismiss();
      userVerified = true;
      notifyListeners();
      return true;
    }else{
      EasyLoading.showError("verification failed");
      EasyLoading.dismiss();
     userVerified=false;
      notifyListeners();
     return false;

    }

  }


  getCountryList()async{
    var apiresponse = await _login_repo.getCountryList();
    if(apiresponse.httpCode==200){
      countryList.clear();
      countryprocecssed.clear();
      print("the obj is .....   ${apiresponse.data.data?.length}");
      // var lclist = apiresponse.data.data
       countryList.addAll(apiresponse.data.data!);
       if(countryList.length>0){
         countryList.forEach((element) {

           countryprocecssed.add(element.name!);

         });
       }
    }
    notifyListeners();

  }

  String getPhoneCode( List<cs.Data> clist,name){
    String phoneCode='';

    clist.forEach((element) {

      if(element?.name==name){
        phoneCode = element.phoneCode.toString();
      };
    });

    return phoneCode;
  }


  Future<bool>userRegister(BuildContext context,RegisterModel registerModel)async{
    EasyLoading.show(status: 'Registration in Progress...', );
    var apiresponse = await _login_repo.registerUser(registerModel);

    if(apiresponse.data.data['success']==true){

     var data =  ApiResponse(
          httpCode: apiresponse.httpCode,
          message: apiresponse.message,
          data:UserRegistrationModel.fromJson(apiresponse.data.data)
      );
     registerUserModel = data.data;
     EasyLoading.showSuccess(apiresponse.data.data['message']);

     return true;
    }else{
      var errordata = apiresponse.data.data;
      var msg  = errordata['errors'];
      if(errordata['message']!=null && errordata['message']!=""){
        DialogCustom.showAlertDialog(context,tittle:errordata['message'],message: getMessge(msg) );
        EasyLoading.dismiss();

      }
      return false;
    }


  }

  getNoticeBoard(BuildContext context)async{
    var apiresponse = await _login_repo.getNoticeBoard();
    print("the unothenticatd messge is ${apiresponse.data.data["message"]}");
    if(apiresponse.data.data["message"]=="Unauthenticated."){
      Provider.of<ProfileController>(context,listen: false).userLogout();
      //NavUtils.pushAndRemoveUntil(context, LoginScreen());
    }
    if(apiresponse.httpCode==200){
      print("the notice data ${apiresponse.data.data["data"]["data"]}");

      var data  = ApiResponse(httpCode: apiresponse.httpCode, message: apiresponse.message, data: apiresponse.data.data["data"]["data"]);
      print("notice data is ............${data.data}");
      List<dynamic> dynamicList = data.data;
      noticeModel= dynamicList.map((e) =>  NoticeModel(body: e["body"],date: e["date"],id: e["id"],image: e["image"],title: e["title"],isRead: e["is_read"])).toList();
      print("the converted data list ........${noticeModel.length}");

    }
   // notifyListeners();

  }

  String  getMessge(msg) {
    String message  = "";
    if(msg!=null && msg!=""){
      Map<String, dynamic> jsonData = msg;
      Iterable<String> keys = jsonData.keys;

      for(var key in keys){
        List<dynamic> data = jsonData[key];
        for(int i = 0 ; i<data.length;i++){
          message = " "+message+" \n"+data[i];
        }
      }
      return message;
    }else {
      message = "No description";
      return message;
    }



  }

  getGlobalNotice()async{
    var apiresponse = await _login_repo.getNoticeBoard();
    if(apiresponse.httpCode==200){
      globalNotice = apiresponse.data.data;
    }
    notifyListeners();

  }

 Future<bool> getGlobalSettings()async{
    var apiresponse = await _login_repo.getGlobalSettings();
    if(apiresponse.httpCode==200){
      globalSeetings = apiresponse.data;
      return true;
    }else return false;


  }

  getSliderImage(BuildContext context)async{
    print("the method is called slidermehod");
    var apiresponse = await _login_repo.getSlider();
    sliderModel = apiresponse.data;
    //notifyListeners();
    }
  getExchangesName()async{
    print("the method is called slidermehod");
    var apiresponse = await _login_repo.getExchageName();
    exchangeNameModel = apiresponse.data;
    exchangeList = exchangeNameModel?.data;
    notifyListeners();
    //notifyListeners();
    }

    String apibind="Bind";

  Future<bool> bindBinanceApi(api_key,api_secret,verificationcode)async{
    EasyLoading.show(status: "Binding is in progress ..");
    var apiresponse = await _login_repo.bind_binanceApi(api_key, api_secret, verificationcode);
    if(apiresponse.httpCode==200){
     await Pref.setBool("binance", true);
      binanceData=apiresponse.data;
      apibind="Unbind";
      EasyLoading.dismiss();
      return true;
    }else {
      binanceData = apiresponse.data;
      EasyLoading.showInfo("${apiresponse.message}",duration: Duration(milliseconds: 1500));
     return false;
    }
  }
  }

