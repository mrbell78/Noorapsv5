import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/home/home_controller.dart';
import 'package:nurhossen_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:nurhossen_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:nurhossen_s_application5/widgets/custom_outlined_button.dart';
import 'package:nurhossen_s_application5/widgets/custom_pin_code_text_field.dart';
import 'package:provider/provider.dart';

class VerificationCodeScreen extends StatelessWidget {
   VerificationCodeScreen({Key? key}) : super(key: key);

  String verificationCode= "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Consumer<HomeController>(
          builder: (BuildContext context, provider,__) {
            return Scaffold(
                resizeToAvoidBottomInset: false,
                appBar: _buildAppBar(context),
                body: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: Column(children: [
                      Text("Log in Verification code",
                          style: CustomTextStyles.titleLargeAmberA700Bold),
                      SizedBox(height: 25.v),
                      _buildOtpView(context),
                      Spacer(flex: 64),
                      CustomOutlinedButton(
                        text: "Confirm",
                        margin: EdgeInsets.symmetric(horizontal: 4.h),
                        buttonStyle: CustomButtonStyles.outlineAmberATL10,
                        buttonTextStyle:
                        CustomTextStyles.titleLargeAmberA700Bold,
                        onPressed: () async {
                          await provider.verifyUser(verificationCode).then((value) {
                            if(value==true){
                              Navigator.pop(context);
                            }
                          });

                        },
                      ),

                      Spacer(flex: 35)
                    ])));

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
  Widget _buildOtpView(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 14.h,right: 14.h),
              child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) {
                    print("the valiue is ${value.length}");
                    if(value.length==6){
                      verificationCode=value;
                    }

                  },

              )),
          SizedBox(height: 5.v),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Resend Code?",
                        style: CustomTextStyles.titleLargeAmberA700),
                    Text("5 minutes",
                        style: CustomTextStyles.titleLargeAmberA700)
                  ]))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapVector(BuildContext context) {
    Navigator.pop(context);
  }
}
