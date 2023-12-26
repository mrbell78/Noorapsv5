import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:nurhossen_s_application5/home/response_model/exchange_name_model.dart';
import 'package:nurhossen_s_application5/home/response_model/slider_widget.dart';

import '../../http-service/api_response.dart';
import '../../http-service/http-service.dart';
import '../../locator/locator.dart';
import '../general_model/global_notice.dart';
import '../general_model/global_settings.dart';
import '../registration/request_body/resiter_body_model.dart';
import '../registration/response_body/country_model.dart';
import '../utils_prv/api-constant.dart';

class HomeRepository{

  var _httpService = locator<HttpService>();

  Future<ApiResponse<Response?>> getUserId(String userName, String password) async {

    var apiResponse = await _httpService.postRequest(ApiConstant.USERLOGIN,
        data: {
          "email":userName,
          "password":password,
        }
    );

   return apiResponse;

  }

  Future<ApiResponse<CountryModel>> getCountryList() async {

    var apiResponse = await _httpService.getRequest(ApiConstant.GETCOUNTRY);

    return ApiResponse(
        httpCode: apiResponse.httpCode,
        message: apiResponse.message,
        data:CountryModel.fromJson(apiResponse.data.data)
    );

  }

  Future<ApiResponse<GlobalNotice>> getGlobalNotice() async {

    var apiResponse = await _httpService.getRequest(ApiConstant.GLOBALNOTICE);

    return ApiResponse(
        httpCode: apiResponse.httpCode,
        message: apiResponse.message,
        data:GlobalNotice.fromJson(apiResponse.data.data)
    );

  }

  Future<ApiResponse<Response>> registerUser(RegisterModel requestModel) async {
    var apiResponse = await _httpService.postRequest(ApiConstant.USERREGISTER,data:{
      "name": requestModel.name,
      "email": requestModel.email,
      "password": requestModel.password,
      "password_confirmation": requestModel.password,
      "phone": requestModel.phone,
      "gender": requestModel.gender,
      "country_id":"1",
      "refer_by":requestModel.referelCode,
    });
    return apiResponse;

  }


  Future<ApiResponse<Response>> sendVerificationCode(via) async {
    var apiResponse = await _httpService.postRequest(ApiConstant.SENDVCODE,data:{
      "via": via
    });
    return apiResponse;

  }

  Future<ApiResponse<Response>> verifyUser(otp) async {
    print("the otp data is "+otp);
    var apiResponse = await _httpService.postRequest(ApiConstant.VERIFYUSER,data:{
      "otp": otp
    });
    return apiResponse;

  }

  Future<ApiResponse<Response>> getNoticeBoard() async {
    var apiResponse = await _httpService.getRequest(ApiConstant.NOTICEBOARD,);

    return apiResponse;

  }

  Future<ApiResponse<GlobalSeetings>> getGlobalSettings() async {
    var apiResponse = await _httpService.getRequest(ApiConstant.GLOBALSETTINGS,);
    return ApiResponse(
        httpCode: apiResponse.httpCode,
        message: apiResponse.message,
        data:GlobalSeetings.fromJson(apiResponse.data.data)
    );

  }

  Future<ApiResponse<SliderModel>> getSlider() async {
    var apiResponse = await _httpService.getRequest(ApiConstant.SLIDER,);

    return ApiResponse(httpCode: apiResponse.httpCode, message: apiResponse.message,
        data:SliderModel.fromJson(apiResponse.data.data) );


  }

    Future<ApiResponse<ExchangeNameModel>> getExchageName() async {
    var apiResponse = await _httpService.getRequest(ApiConstant.EXCHANGES,);

    return ApiResponse(httpCode: apiResponse.httpCode, message: apiResponse.message,
        data:ExchangeNameModel.fromJson(apiResponse.data.data) );


  }

  Future<ApiResponse<Response>> bind_binanceApi(api_key,api_secret,verificationcode) async {

    var apiResponse = await _httpService.postRequest(ApiConstant.BINANCEBINDING,data:{
      "api_key": api_key,
      "api_secret": api_secret,
      "verification_code": verificationcode,

    });
    return apiResponse;

  }

}