import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:nurhossen_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:nurhossen_s_application5/widgets/custom_outlined_button.dart';
import 'package:nurhossen_s_application5/widgets/custom_text_form_field.dart';
import 'package:provider/provider.dart';

import '../../home/home_controller.dart';
import '../home_screen/home_screen.dart';
import '../home_screen/home_screen.dart';

// ignore_for_file: must_be_immutable
class LogInOneScreen extends StatefulWidget {
  LogInOneScreen({Key? key}) : super(key: key);

  @override
  State<LogInOneScreen> createState() => _LogInOneScreenState();
}

class _LogInOneScreenState extends State<LogInOneScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool _shouldShowPassword = false;

  String? _email="";

  String? _password;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text("Log in",
                                      style: theme.textTheme.displayMedium))),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: CustomTextFormField(
                                  controller: emailController,
                                  hintText: "Email",

                                  textInputType: TextInputType.emailAddress,
                                  textStyle: theme.textTheme.titleMedium,

                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter email';
                                    }
                                    return null;
                                  },
                                  suffix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 10.v, 11.h, 10.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgFrame,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  suffixConstraints:
                                  BoxConstraints(maxHeight: 44.v))),
                          SizedBox(height: 20.v),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: CustomTextFormField(
                                  controller: passwordController,
                                  textStyle: theme.textTheme.titleMedium,
                                  hintText: "Password",
                                  textInputAction: TextInputAction.done,
                                  textInputType: _shouldShowPassword?TextInputType.text:TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter password';
                                    }
                                    return null;
                                  },
                                  suffix: GestureDetector(
                                    onTap: (){
                                     setState(() {
                                       _shouldShowPassword =!_shouldShowPassword;
                                     });
                                    },
                                    child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            30.h, 10.v, 11.h, 10.v),
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgFrameBlack900,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize)),
                                  ),
                                  suffixConstraints:
                                  BoxConstraints(maxHeight: 44.v),
                                  obscureText: true)),
                          SizedBox(height: 8.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Forgot password? ",
                                            style: CustomTextStyles
                                                .titleLargeAmberA700Medium),
                                        TextSpan(
                                            text: "RESET",
                                            style: CustomTextStyles
                                                .titleLargeAmberA700Medium
                                                .copyWith(
                                                decoration:
                                                TextDecoration.underline))
                                      ]),
                                      textAlign: TextAlign.left))),
                          Spacer(flex: 59),
                          CustomOutlinedButton(
                              text: "Continue",
                              margin: EdgeInsets.only(left: 8.h),
                              buttonStyle: CustomButtonStyles.outlineAmberATL10,
                              buttonTextStyle:
                              CustomTextStyles.titleLargeAmberA700Bold,
                              onPressed: () {


                                // Validate returns true if the form is valid, or false otherwise.
                                if (_formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Processing Data')),
                                  );
                                  if(emailController.text.trim()!=null && emailController.text.trim().isNotEmpty && passwordController.text.trim()!=null && passwordController.text.trim().isNotEmpty){
                                    provider.setUserId(context,emailController.text.trim(), passwordController.text.trim()).then((value) {

                                      if(value){

                                        onTapContinue(context);

                                      }

                                    });

                                  }

                                }

                              }),
                          Spacer(flex: 40)
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

  /// Navigates back to the previous screen.
  onTapVector(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the verificationCodeScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.checkAccess,);
  }
}
