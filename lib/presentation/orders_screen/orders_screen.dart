import '../orders_screen/widgets/tradingcomponentlist_item_widget.dart';import 'package:flutter/material.dart';import 'package:nurhossen_s_application5/core/app_export.dart';import 'package:nurhossen_s_application5/presentation/set_order_with_single_page/set_order_with_single_page.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_leading_image.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_subtitle_five.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_subtitle_four.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_title_image.dart';import 'package:nurhossen_s_application5/widgets/app_bar/custom_app_bar.dart';import 'package:nurhossen_s_application5/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class OrdersScreen extends StatelessWidget {OrdersScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 20.v), _buildTradingComponentList(context)])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 194.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(right: 170.h, bottom: 23.v), onTap: () {onTapArrowLeft(context);}), title: Container(margin: EdgeInsets.only(left: 1.h, top: 22.v), decoration: AppDecoration.column22, child: Column(children: [AppbarSubtitleFive(text: "Orders", margin: EdgeInsets.only(left: 69.h, right: 78.h)), AppbarSubtitleFive(text: "Results", margin: EdgeInsets.only(left: 143.h)), AppbarSubtitleFive(text: "Signal", margin: EdgeInsets.only(right: 152.h)), SizedBox(height: 2.v), AppbarTitleImage(imagePath: ImageConstant.imgRectangle142, margin: EdgeInsets.only(left: 72.h, right: 81.h))])), actions: [AppbarSubtitleFour(text: "News", margin: EdgeInsets.only(top: 48.v, right: 7.h), onTap: () {onTapNews(context);}), AppbarSubtitleFour(text: "Poll", margin: EdgeInsets.only(left: 28.h, top: 48.v, right: 7.h)), AppbarSubtitleFour(text: "Chat", margin: EdgeInsets.only(left: 28.h, top: 48.v, right: 7.h))], styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildTradingComponentList(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 35.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 20.v);}, itemCount: 3, itemBuilder: (context, index) {return TradingcomponentlistItemWidget();})); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Group6: return AppRoutes.setOrderWithSinglePage; case BottomBarEnum.Frameonprimary: return "/"; case BottomBarEnum.User: return "/"; case BottomBarEnum.Group1101: return "/"; case BottomBarEnum.Group9: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.setOrderWithSinglePage: return SetOrderWithSinglePage(); default: return DefaultWidget();} } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the newsTabContainerScreen when the action is triggered.
onTapNews(BuildContext context) { Navigator.pushNamed(context, AppRoutes.newsTabContainerScreen); } 
 }
