import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/home/home_controller.dart';
import 'package:nurhossen_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:nurhossen_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:nurhossen_s_application5/widgets/custom_drop_down.dart';
import 'package:nurhossen_s_application5/widgets/custom_outlined_button.dart';
import 'package:nurhossen_s_application5/widgets/custom_text_form_field.dart';
import 'package:provider/provider.dart';

import '../../registration/request_body/resiter_body_model.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController fullNameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  List<String> dropdownItemList = ["Male", "Female", "Others"];
  String gender="";

  TextEditingController phoneNumberEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  TextEditingController confirmPasswordEditTextController =
      TextEditingController();

  TextEditingController referralCodeValueEditTextController =
      TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String country_phoneCode='';
  RegisterModel registerModel = RegisterModel();

  @override
  void initState() {
    // TODO: implement initState
    Provider.of<HomeController>(context, listen: false).getCountryList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Consumer<HomeController>(
          builder: (BuildContext context, provider, __) {
            return Scaffold(
                resizeToAvoidBottomInset: false,
                appBar: _buildAppBar(context),
                body: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: ListView(
                            shrinkWrap: true,
                            children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text("Sign up",
                                      style: theme.textTheme.displayMedium))),
                          SizedBox(height: 26.v),
                          _buildFullNameEditText(context),
                          SizedBox(height: 30.v),
                          _buildEmailEditText(context),
                          SizedBox(height: 30.v),
                              provider.countryList.length>0? Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: CustomDropDown(
                                  // icon: Container(
                                  //     margin: EdgeInsets.fromLTRB(
                                  //         30.h, 10.v, 11.h, 10.v),
                                  //     child: CustomImageView(
                                  //         imagePath: ImageConstant.imgArrowdown,
                                  //         height: 24.adaptSize,
                                  //         width: 24.adaptSize)),
                                  hintText: "Select Country",
                                  textStyle: TextStyle(color: Colors.black,fontSize: 16,),
                                  items: provider.countryprocecssed,
                                  onChanged: (value) {
                                    print("the value is ....${value}");
                                    country_phoneCode= provider.getPhoneCode(provider.countryList, value);
                                    print("the phone code is ....${country_phoneCode}");

                                  })): const Center(child: CircularProgressIndicator()),


                              SizedBox(height: 30.v),
                               Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: CustomDropDown(
                                      // icon: Container(
                                      //     margin: EdgeInsets.fromLTRB(
                                      //         30.h, 10.v, 11.h, 10.v),
                                      //     child: CustomImageView(
                                      //         imagePath: ImageConstant.imgArrowdown,
                                      //         height: 24.adaptSize,
                                      //         width: 24.adaptSize)),
                                      hintText: "Select Gender",
                                      textStyle: TextStyle(color: Colors.black,fontSize: 16,),
                                      items: dropdownItemList,
                                      onChanged: (value) {

                                        gender=value;
                                        print("the value is ....${gender}");

                                      })),
                          SizedBox(height: 30.v),
                          _buildPhoneNumberEditText(context),
                          SizedBox(height: 30.v),
                          _buildPasswordEditText(context),
                          SizedBox(height: 30.v),
                          _buildConfirmPasswordEditText(context),
                          SizedBox(height: 30.v),
                          _buildReferralCodeValueEditText(context),
                          SizedBox(height: 30.v),
                          _buildRegisterButton(context),
                          SizedBox(height: 30.v)
                        ]))));
          },
        ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 93.v,
        leadingWidth: 389.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorAmberA700,
            margin: EdgeInsets.fromLTRB(40.h, 15.v, 337.h, 15.v),
            onTap: () {
              onTapVector(context);
            }));
  }

  /// Section Widget
  Widget _buildFullNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter password';
              }
              return null;
            },

            textStyle: theme.textTheme.titleMedium,
            controller: fullNameEditTextController,
            hintText: "Full name",
            contentPadding:
                EdgeInsets.symmetric(horizontal: 17.h, vertical: 7.v),
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL10,
            fillColor: appTheme.gray10002));
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
            textStyle: theme.textTheme.titleMedium,
            controller: emailEditTextController,
            hintText: "Email",
            textInputType: TextInputType.emailAddress,
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 10.v, 11.h, 10.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFrame,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter email';
              }
              return null;
            },
            suffixConstraints: BoxConstraints(maxHeight: 44.v)));
  }

  /// Section Widget
  Widget _buildPhoneNumberEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
            textStyle: theme.textTheme.titleMedium,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter valid phone number';
              }
              return null;
            },
            controller: phoneNumberEditTextController,
            hintText: "Phone Number",
            textInputType: TextInputType.phone,
            contentPadding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 7.v)));
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
            textStyle: theme.textTheme.titleMedium,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter password';
              }
              return null;
            },
            controller: passwordEditTextController,
            hintText: "Password",
            textInputType: TextInputType.visiblePassword,
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 10.v, 9.h, 10.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFrameBlack900,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 44.v),
            obscureText: true));
  }

  /// Section Widget
  Widget _buildConfirmPasswordEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
            textStyle: theme.textTheme.titleMedium,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter password';
              }
              return null;
            },
            controller: confirmPasswordEditTextController,
            hintText: "Confirm password",
            textInputType: TextInputType.visiblePassword,
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 9.v, 9.h, 11.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFrameBlack900,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 44.v),
            obscureText: true));
  }

  /// Section Widget
  Widget _buildReferralCodeValueEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
            textStyle: theme.textTheme.titleMedium,
            controller: referralCodeValueEditTextController,
            hintText: "Referral Code",
            textInputAction: TextInputAction.done,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 17.h, vertical: 7.v)));
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return Consumer<HomeController>(
      builder: (BuildContext context, provider, __) {
        return  CustomOutlinedButton(
            text: "Register",
            margin: EdgeInsets.only(left: 8.h),
            buttonStyle: CustomButtonStyles.outlineAmberATL10,
            buttonTextStyle: CustomTextStyles.titleLargeAmberA700Bold,
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
                if(emailEditTextController.text.trim()!=null &&
                    emailEditTextController.text.trim().isNotEmpty &&
                    passwordEditTextController.text.trim()!=null &&
                    passwordEditTextController.text.trim().isNotEmpty &&
                    confirmPasswordEditTextController.text.trim().isNotEmpty &&
                    confirmPasswordEditTextController.text.trim()!=null &&
                    fullNameEditTextController.text.trim()!=null &&
                    fullNameEditTextController.text.trim().isNotEmpty &&
                    phoneNumberEditTextController.text.trim().isNotEmpty &&
                    phoneNumberEditTextController.text.trim()!=null &&
                    gender.isNotEmpty && gender!=""
                ){

                  if(passwordEditTextController.text.trim()==confirmPasswordEditTextController.text.trim()){
                    registerModel.name=fullNameEditTextController.text.trim();
                    registerModel.email=emailEditTextController.text.trim();
                    registerModel.countryId= country_phoneCode;
                    registerModel.password= passwordEditTextController.text.trim();
                    registerModel.phone = country_phoneCode+phoneNumberEditTextController.text.trim();
                    registerModel.referelCode = referralCodeValueEditTextController.text.trim();
                    registerModel.gender="male";

                    await provider.userRegister(context, registerModel).then((value) {

                      if(value==true){
                        Navigator.pop(context);
                        EasyLoading.dismiss();
                      }
                    });



                  }else{
                    setState(() {
                      Fluttertoast.showToast(
                          msg: "password not matched!",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    });
                  }

                }

              }
              // onTapRegisterButton(context);
            });
      },
    );
  }

  /// Navigates back to the previous screen.
  onTapVector(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the logInOneScreen when the action is triggered.
  onTapRegisterButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInOneScreen);
  }
}
