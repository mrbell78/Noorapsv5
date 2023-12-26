import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/presentation/set_order_with_single_page/set_order_with_single_page.dart';
import 'package:nurhossen_s_application5/widgets/custom_bottom_bar.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSecuritySection(context),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: _buildEmailSection(
                  context,
                  userImage: ImageConstant.imgLocation,
                  email: "Authenticator App",
                ),
              ),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: _buildEmailSection(
                  context,
                  userImage: ImageConstant.imgFrame20x20,
                  email: "Email",
                ),
              ),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: _buildEmailSection(
                  context,
                  userImage: ImageConstant.imgFrameOnprimary20x20,
                  email: "Password",
                ),
              ),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: _buildEmailSection(
                  context,
                  userImage: ImageConstant.imgFrame1,
                  email: "Phone Number",
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBarSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSecuritySection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 139.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlack9004,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 18.v),
          Text(
            "Security",
            style: theme.textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildEmailSection(
    BuildContext context, {
    required String userImage,
    required String email,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlack9006.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: AppDecoration.fillAmberA.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder14,
            ),
            child: CustomImageView(
              imagePath: userImage,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 5.v,
              bottom: 5.v,
            ),
            child: Text(
              email,
              style: CustomTextStyles.titleSmallPoppinsBlack900_1.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownBlack900,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 2.h,
              bottom: 4.v,
            ),
          ),
        ],
      ),
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
