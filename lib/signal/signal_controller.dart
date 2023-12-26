import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:nurhossen_s_application5/signal/response_model/add_ratting_model.dart';
import 'package:nurhossen_s_application5/signal/response_model/all_signal/all_signal_model.dart';
import 'package:nurhossen_s_application5/signal/response_model/create_signal_model.dart';
import 'package:nurhossen_s_application5/signal/response_model/default_package_model.dart';
import 'package:nurhossen_s_application5/signal/response_model/follow_model.dart';
import 'package:nurhossen_s_application5/signal/response_model/request_body/create_signal_request_body.dart';
import 'package:nurhossen_s_application5/signal/signal_repository.dart';
import 'package:nurhossen_s_application5/signal/response_model/default_package_model.dart' as dsl;
import 'package:nurhossen_s_application5/signal/response_model/all_signal/data_child.dart' as signal;
import '../../locator/locator.dart';
import '../account/response_model/user_model.dart';
import '../utils_prv/dialog/DialogCustom.dart';
class SignalController extends ChangeNotifier{
  var _signal_repo = locator<SignalRepository>();
  AllSingnalModel? allSingnalModel;
  List<signal.Data>? signalList=[];
  List<signal.Packages> packageList=[];
  FollowModel? followModel;
  AddRatingModel?addRatingModel;
  DefaultSignalPackage? defaultSignalPackage;
  List<dsl.Data> defaultPackageList = [];
  List<TextEditingController> controller =[];
  CreateSignalModel? createSignalModel;
  List<signalPackage> pkg = [];


  getAllSignal({searchString}) async {
    var apiresponse = await _signal_repo.getAllSignal(searchString: searchString);
    allSingnalModel=apiresponse.data;
    signalList = allSingnalModel?.data?.data;
    notifyListeners();

  }
  Future<bool> follow(context,id) async {
    EasyLoading.show(status: "following..");
    var apiresponse = await _signal_repo.follow(id);
    followModel=apiresponse.data;
    if(apiresponse.httpCode==200){
      EasyLoading.dismiss();
      notifyListeners();
      return true;
    }else{
      EasyLoading.dismiss();
      DialogCustom.showAlertDialog(context,tittle: "Follow", message: apiresponse.message);
      return false;
    }
  }
  Future<bool> addRatting(context,signal_id,ratting) async {
    EasyLoading.show(status: "add ratting..");
    var apiresponse = await _signal_repo.addRating(signal_id,ratting);
    addRatingModel=apiresponse.data;
    if(apiresponse.httpCode==200){
      EasyLoading.dismiss();
      return true;
    }else{
      EasyLoading.dismiss();
      DialogCustom.showAlertDialog(context,tittle: "Rattings Error", message: apiresponse.message);
      return false;
    }
  }
  getDefaultPackage() async {
    var apiresponse = await _signal_repo.getDefaultPackage();
    defaultSignalPackage=apiresponse.data;
    defaultPackageList = defaultSignalPackage!.data!;
    defaultPackageList.forEach((element) {
      controller.add(TextEditingController());
    });

    notifyListeners();

  }

  Future<bool> createSignal(context,CreateSignalRequestBody data) async {
    EasyLoading.show(status: "Progress..");
    var apiresponse = await _signal_repo.createSignal(data);
    createSignalModel=apiresponse.data;
    if(apiresponse.httpCode==200){
      EasyLoading.dismiss();
      return true;
    }else{
      EasyLoading.dismiss();
      DialogCustom.showAlertDialog(context,tittle: "Signal Error", message: apiresponse.message);
      return false;
    }
  }


  String? getPrice(int i) {

    if(controller.length>0){
      return controller[i].text.toString();
    }else return '';
  }

}



