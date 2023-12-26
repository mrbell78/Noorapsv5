import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Know more about xpertbit",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.knowMoreAboutXpertbitScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Log in",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Log in One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.logInOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verification code",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verificationCodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Signal group - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.mySignalGroupTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Set order with single - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.setOrderWithSingleContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Signal after subscription",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signalAfterSubscriptionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Poll",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.pollScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dashboard For normal user",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboardForNormalUserScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Revenue Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.revenueDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Withdraw Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.withdrawThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Withdraw One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.withdrawOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Withdraw Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.withdrawTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Withdraw Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.withdrawFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Withdraw",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.withdrawScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Normal user profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.normalUserProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Signal group to profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signalGroupToProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Signal group",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signalGroupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home to profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeToProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "feeds - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.feedsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Set order with multi",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.setOrderWithMultiScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Orders",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.ordersScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Signal Dashboard - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.signalDashboardTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "News - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.newsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dashboard for expert trader",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.dashboardForExpertTraderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Buy VIP Subscription",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.buyVipSubscriptionScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
