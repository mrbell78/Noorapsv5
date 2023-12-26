import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/presentation/know_more_about_xpertbit_screen/know_more_about_xpertbit_screen.dart';
import 'package:nurhossen_s_application5/presentation/log_in_screen/log_in_screen.dart';
import 'package:nurhossen_s_application5/presentation/log_in_one_screen/log_in_one_screen.dart';
import 'package:nurhossen_s_application5/presentation/verification_code_screen/verification_code_screen.dart';
import 'package:nurhossen_s_application5/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:nurhossen_s_application5/presentation/my_signal_group_tab_container_screen/my_signal_group_tab_container_screen.dart';
import 'package:nurhossen_s_application5/presentation/set_order_with_single_container_screen/set_order_with_single_container_screen.dart';
import 'package:nurhossen_s_application5/presentation/signal_after_subscription_screen/signal_after_subscription_screen.dart';
import 'package:nurhossen_s_application5/presentation/home_screen/home_screen.dart';
import 'package:nurhossen_s_application5/presentation/poll_screen/poll_screen.dart';
import 'package:nurhossen_s_application5/presentation/dashboard_for_normal_user_screen/dashboard_for_normal_user_screen.dart';
import 'package:nurhossen_s_application5/presentation/revenue_details_screen/revenue_details_screen.dart';
import 'package:nurhossen_s_application5/presentation/withdraw_three_screen/withdraw_three_screen.dart';
import 'package:nurhossen_s_application5/presentation/withdraw_one_screen/withdraw_one_screen.dart';
import 'package:nurhossen_s_application5/presentation/withdraw_two_screen/withdraw_two_screen.dart';
import 'package:nurhossen_s_application5/presentation/withdraw_four_screen/withdraw_four_screen.dart';
import 'package:nurhossen_s_application5/presentation/withdraw_screen/withdraw_screen.dart';
import 'package:nurhossen_s_application5/presentation/normal_user_profile_screen/normal_user_profile_screen.dart';
import 'package:nurhossen_s_application5/presentation/signal_group_to_profile_screen/signal_group_to_profile_screen.dart';
import 'package:nurhossen_s_application5/presentation/signal_group_screen/signal_group_screen.dart';
import 'package:nurhossen_s_application5/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:nurhossen_s_application5/presentation/home_to_profile_screen/home_to_profile_screen.dart';
import 'package:nurhossen_s_application5/presentation/profile_screen/profile_screen.dart';
import 'package:nurhossen_s_application5/presentation/feeds_tab_container_screen/feeds_tab_container_screen.dart';
import 'package:nurhossen_s_application5/presentation/notification_screen/notification_screen.dart';
import 'package:nurhossen_s_application5/presentation/set_order_with_multi_screen/set_order_with_multi_screen.dart';
import 'package:nurhossen_s_application5/presentation/orders_screen/orders_screen.dart';
import 'package:nurhossen_s_application5/presentation/signal_dashboard_tab_container_screen/signal_dashboard_tab_container_screen.dart';
import 'package:nurhossen_s_application5/presentation/news_tab_container_screen/news_tab_container_screen.dart';
import 'package:nurhossen_s_application5/presentation/dashboard_for_expert_trader_screen/dashboard_for_expert_trader_screen.dart';
import 'package:nurhossen_s_application5/presentation/buy_vip_subscription_screen/buy_vip_subscription_screen.dart';
import 'package:nurhossen_s_application5/presentation/app_navigation_screen/app_navigation_screen.dart';

import '../bottom_navigation/bottom_navbar.dart';
import '../bottom_navigation/verification_access.dart';

class AppRoutes {
  static const String knowMoreAboutXpertbitScreen =
      '/know_more_about_xpertbit_screen';

  static const String logInScreen = '/log_in_screen';

  static const String logInOneScreen = '/log_in_one_screen';

  static const String verificationCodeScreen = '/verification_code_screen';
  static const String checkAccess = '/ChekAccess';

  static const String signUpScreen = '/sign_up_screen';
  static const String navigationScreen = '/BottomNavBar';

  static const String mySignalGroupPage = '/my_signal_group_page';

  static const String mySignalGroupTabContainerScreen =
      '/my_signal_group_tab_container_screen';

  static const String setOrderWithSinglePage = '/set_order_with_single_page';

  static const String setOrderWithSingleContainerScreen =
      '/set_order_with_single_container_screen';

  static const String signalAfterSubscriptionScreen =
      '/signal_after_subscription_screen';

  static const String homeScreen = '/home_screen';

  static const String resultsPage = '/results_page';

  static const String pollScreen = '/poll_screen';

  static const String dashboardForNormalUserScreen =
      '/dashboard_for_normal_user_screen';

  static const String revenueDetailsScreen = '/revenue_details_screen';

  static const String withdrawThreeScreen = '/withdraw_three_screen';

  static const String withdrawOneScreen = '/withdraw_one_screen';

  static const String withdrawTwoScreen = '/withdraw_two_screen';

  static const String withdrawFourScreen = '/withdraw_four_screen';

  static const String withdrawScreen = '/withdraw_screen';

  static const String normalUserProfileScreen = '/normal_user_profile_screen';

  static const String signalGroupToProfileScreen =
      '/signal_group_to_profile_screen';

  static const String signalGroupScreen = '/signal_group_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String homeToProfileScreen = '/home_to_profile_screen';

  static const String profileScreen = '/profile_screen';

  static const String feedsPage = '/feeds_page';

  static const String feedsTabContainerScreen = '/feeds_tab_container_screen';

  static const String chaneelPage = '/chaneel_page';

  static const String chaneelOnePage = '/chaneel_one_page';

  static const String notificationScreen = '/notification_screen';

  static const String setOrderWithMultiScreen = '/set_order_with_multi_screen';

  static const String ordersScreen = '/orders_screen';

  static const String signalDashboardPage = '/signal_dashboard_page';

  static const String signalDashboardTabContainerScreen =
      '/signal_dashboard_tab_container_screen';

  static const String newsPage = '/news_page';

  static const String newsTabContainerScreen = '/news_tab_container_screen';

  static const String dashboardForExpertTraderScreen =
      '/dashboard_for_expert_trader_screen';

  static const String buyVipSubscriptionScreen = '/buy_vip_subscription_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    knowMoreAboutXpertbitScreen: (context) => KnowMoreAboutXpertbitScreen(),
    logInScreen: (context) => LogInScreen(),
    logInOneScreen: (context) => LogInOneScreen(),
    verificationCodeScreen: (context) => VerificationCodeScreen(),
    navigationScreen: (context) => BottomNavBar(),
    checkAccess: (context) => ChekAccess(),
    signUpScreen: (context) => SignUpScreen(),
    mySignalGroupTabContainerScreen: (context) =>
        MySignalGroupTabContainerScreen(),
    setOrderWithSingleContainerScreen: (context) =>
        SetOrderWithSingleContainerScreen(),
    signalAfterSubscriptionScreen: (context) => SignalAfterSubscriptionScreen(),
    homeScreen: (context) => HomeScreen(),
    pollScreen: (context) => PollScreen(),
    dashboardForNormalUserScreen: (context) => DashboardForNormalUserScreen(),
    revenueDetailsScreen: (context) => RevenueDetailsScreen(),
    withdrawThreeScreen: (context) => WithdrawThreeScreen(),
    withdrawOneScreen: (context) => WithdrawOneScreen(),
    withdrawTwoScreen: (context) => WithdrawTwoScreen(),
    withdrawFourScreen: (context) => WithdrawFourScreen(),
    withdrawScreen: (context) => WithdrawScreen(),
    normalUserProfileScreen: (context) => NormalUserProfileScreen(),
    signalGroupToProfileScreen: (context) => SignalGroupToProfileScreen(),
    signalGroupScreen: (context) => SignalGroupScreen(),
    profileOneScreen: (context) => ProfileOneScreen(),
    homeToProfileScreen: (context) => HomeToProfileScreen(),
    profileScreen: (context) => ProfileScreen(),
    feedsTabContainerScreen: (context) => FeedsTabContainerScreen(),
    notificationScreen: (context) => NotificationScreen(),
    setOrderWithMultiScreen: (context) => SetOrderWithMultiScreen(),
    ordersScreen: (context) => OrdersScreen(),
    signalDashboardTabContainerScreen: (context) =>
        SignalDashboardTabContainerScreen(),
    newsTabContainerScreen: (context) => NewsTabContainerScreen(),
    dashboardForExpertTraderScreen: (context) =>
        DashboardForExpertTraderScreen(),
    buyVipSubscriptionScreen: (context) => BuyVipSubscriptionScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
