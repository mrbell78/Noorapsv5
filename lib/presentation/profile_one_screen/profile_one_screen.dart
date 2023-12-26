import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/presentation/set_order_with_single_page/set_order_with_single_page.dart';
import 'package:nurhossen_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:nurhossen_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:nurhossen_s_application5/widgets/custom_bottom_bar.dart';
import 'package:nurhossen_s_application5/widgets/custom_elevated_button.dart';
import 'package:nurhossen_s_application5/widgets/custom_text_form_field.dart';

class ProfileOneScreen extends StatelessWidget {
  ProfileOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController securityvalueController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 14.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 10.v),
              _buildEightyThree(context),
              SizedBox(height: 20.v),
              CustomTextFormField(
                controller: securityvalueController,
                hintText: "Security",
                hintStyle: CustomTextStyles.titleSmallPoppinsBlack900_1,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  padding: EdgeInsets.all(6.h),
                  margin: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 10.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.amberA700,
                    borderRadius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFrameOnprimary20x20,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 52.v,
                ),
                suffix: Container(
                  padding: EdgeInsets.fromLTRB(5.h, 4.v, 3.h, 4.v),
                  margin: EdgeInsets.fromLTRB(30.h, 10.v, 8.h, 10.v),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray100,
                    borderRadius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowrightAmberA700,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 52.v,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.v),
              ),
              Spacer(),
              CustomElevatedButton(
                height: 52.v,
                text: "Log Out",
                buttonStyle: CustomButtonStyles.outlineBlackTL10,
                buttonTextStyle: CustomTextStyles.titleMediumSemiBold,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Profile",
        margin: EdgeInsets.only(
          top: 4.v,
          bottom: 29.v,
        ),
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildEightyThree(BuildContext context) {
    return Container(
      width: 348.h,
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBlack9006.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 96.v,
                  width: 69.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text(
                            "Alex",
                            style: CustomTextStyles.titleLargeBlack900SemiBold,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 66.adaptSize,
                          width: 66.adaptSize,
                          padding: EdgeInsets.all(2.h),
                          decoration: AppDecoration.outlineAmberA.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder33,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrontViewYoun,
                            height: 59.adaptSize,
                            width: 59.adaptSize,
                            radius: BorderRadius.circular(
                              29.h,
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 28.adaptSize,
                          margin: EdgeInsets.only(bottom: 29.v),
                          padding: EdgeInsets.symmetric(
                            horizontal: 7.h,
                            vertical: 4.v,
                          ),
                          decoration: AppDecoration.fillAmberA.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder14,
                          ),
                          child: Text(
                            "R1",
                            style: CustomTextStyles.labelLargeOnPrimarySemiBold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrameAmberA700,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 103.h,
                    bottom: 72.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 43.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Registration Info:",
                  style: theme.textTheme.bodyMedium,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "alex@gmail.com",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Group6:
        return AppRoutes.setOrderWithSinglePage;
      case BottomBarEnum.Frameonprimary:
        return "/";
      case BottomBarEnum.User:
        return "/";
      case BottomBarEnum.Group1101:
        return "/";
      case BottomBarEnum.Group9:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.setOrderWithSinglePage:
        return SetOrderWithSinglePage();
      default:
        return DefaultWidget();
    }
  }
}
