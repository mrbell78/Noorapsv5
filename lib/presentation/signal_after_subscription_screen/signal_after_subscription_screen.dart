import '../signal_after_subscription_screen/widgets/tradingview_item_widget.dart';import 'package:flutter/material.dart';import 'package:nurhossen_s_application5/core/app_export.dart';import 'package:nurhossen_s_application5/presentation/set_order_with_single_page/set_order_with_single_page.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_leading_image.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_subtitle_five.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_subtitle_four.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_title_image.dart';import 'package:nurhossen_s_application5/widgets/app_bar/custom_app_bar.dart';import 'package:nurhossen_s_application5/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class SignalAfterSubscriptionScreen extends StatelessWidget {SignalAfterSubscriptionScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 20.v), _buildTradingView(context)])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 42.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 18.h, top: 26.v, bottom: 23.v), onTap: () {onTapArrowLeft(context);}), title: Padding(padding: EdgeInsets.only(left: 11.h, top: 48.v), child: Column(children: [Row(children: [AppbarSubtitleFive(text: "Signals", margin: EdgeInsets.only(top: 1.v)), AppbarSubtitleFive(text: "Orders", margin: EdgeInsets.only(left: 20.h, bottom: 1.v))]), SizedBox(height: 2.v), AppbarTitleImage(imagePath: ImageConstant.imgRectangle142, margin: EdgeInsets.only(left: 4.h, right: 71.h))])), actions: [AppbarSubtitleFour(text: "Results", margin: EdgeInsets.only(top: 48.v, right: 7.h)), AppbarSubtitleFour(text: "News", margin: EdgeInsets.only(left: 20.h, top: 48.v, right: 7.h)), AppbarSubtitleFour(text: "Poll", margin: EdgeInsets.only(left: 20.h, top: 48.v, right: 7.h)), AppbarSubtitleFour(text: "Chat", margin: EdgeInsets.only(left: 20.h, top: 48.v, right: 7.h))], styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildTradingView(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 20.v);}, itemCount: 3, itemBuilder: (context, index) {return TradingviewItemWidget();}))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Group6: return AppRoutes.setOrderWithSinglePage; case BottomBarEnum.Frameonprimary: return "/"; case BottomBarEnum.User: return "/"; case BottomBarEnum.Group1101: return "/"; case BottomBarEnum.Group9: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.setOrderWithSinglePage: return SetOrderWithSinglePage(); default: return DefaultWidget();} } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
