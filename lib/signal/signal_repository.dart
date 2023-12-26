import 'dart:convert';
import 'package:nurhossen_s_application5/signal/response_model/add_ratting_model.dart';
import 'package:nurhossen_s_application5/signal/response_model/all_signal/all_signal_model.dart';
import 'package:nurhossen_s_application5/signal/response_model/create_signal_model.dart';
import 'package:nurhossen_s_application5/signal/response_model/default_package_model.dart';
import 'package:nurhossen_s_application5/signal/response_model/follow_model.dart';
import 'package:nurhossen_s_application5/signal/response_model/request_body/create_signal_request_body.dart';
import '../../http-service/api_response.dart';
import '../../http-service/http-service.dart';
import '../../locator/locator.dart';
import '../utils_prv/api-constant.dart';

class SignalRepository {
  var _httpService = locator<HttpService>();

  Future<ApiResponse<AllSingnalModel>> getAllSignal({searchString}) async {
    var apiResponse = await _httpService.getRequest(ApiConstant.SIGNALALL,qp: {"search": searchString??""});
    return ApiResponse(httpCode: apiResponse.httpCode, message: apiResponse.message, data: AllSingnalModel.fromJson(apiResponse.data.data));


  }
  Future<ApiResponse<FollowModel>> follow(id) async {
    var apiResponse = await _httpService.postRequest(ApiConstant.FOLLOW,data: {
      "signal_group_id": id,
    });
    return ApiResponse(httpCode: apiResponse.httpCode, message: apiResponse.message, data: FollowModel.fromJson(apiResponse.data.data));

  }
  Future<ApiResponse<AddRatingModel>> addRating(signal_group_id,ratting) async {
    var apiResponse = await _httpService.postRequest(ApiConstant.RATTING,data: {
      "signal_group_id": signal_group_id,
      "rating": ratting,
    });
    return ApiResponse(httpCode: apiResponse.httpCode, message: apiResponse.message, data: AddRatingModel.fromJson(apiResponse.data.data));

  }
  Future<ApiResponse<DefaultSignalPackage>> getDefaultPackage() async {
    var apiResponse = await _httpService.getRequest(ApiConstant.DEFAULTPACKAGE,);
    return ApiResponse(httpCode: apiResponse.httpCode, message: apiResponse.message, data: DefaultSignalPackage.fromJson(apiResponse.data.data));
  }

  Future<ApiResponse<CreateSignalModel>> createSignal(CreateSignalRequestBody data) async {
    print("json data ${jsonEncode(data)}");
    var apiResponse = await _httpService.postRequest(ApiConstant.CREATESIGNAL,jsonData:jsonEncode(data));
    return ApiResponse(httpCode: apiResponse.httpCode, message: apiResponse.message, data: CreateSignalModel.fromJson(apiResponse.data.data));

  }

}