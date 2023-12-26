import 'package:dio/dio.dart';
import 'package:nurhossen_s_application5/account/response_model/user_model.dart';

import '../../http-service/api_response.dart';
import '../../http-service/http-service.dart';
import '../../locator/locator.dart';
import '../registration/response_body/country_model.dart';
import '../utils_prv/api-constant.dart';

class ProfileRepository{
  var _httpService = locator<HttpService>();

  Future<ApiResponse<Response?>> updateUser(UserModel userinfo) async {

    var apiResponse = await _httpService.postRequest(ApiConstant.UPLOADPROFILE,
        data: {
          "name":userinfo.data?.name,
          "gender":userinfo.data?.gender,
          "country_id":userinfo.data?.country?.id,
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

  Future<ApiResponse<UserModel>> getUserInfo() async {
    var apiResponse = await _httpService.getRequest(ApiConstant.USERPROFILEGET);
    return ApiResponse(httpCode: apiResponse.httpCode, message: apiResponse.message, data: UserModel.fromJson(apiResponse.data.data));


  }

  Future<ApiResponse<Response>> userLogout() async {
    var apiResponse = await _httpService.postRequest(ApiConstant.USERLOGOUT);
    return apiResponse;
  }

  Future<ApiResponse<Response?>> uploadImage(FormData formData) async {
    var apiResponse = await _httpService.uploadImage(ApiConstant.UPLOADPROFILE,formData);
    return apiResponse;
  }
}