import 'package:flutter/material.dart';import 'package:nurhossen_s_application5/core/app_export.dart';import 'package:nurhossen_s_application5/presentation/set_order_with_single_page/set_order_with_single_page.dart';import 'package:nurhossen_s_application5/presentation/signal_dashboard_page/signal_dashboard_page.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_leading_image.dart';import 'package:nurhossen_s_application5/widgets/app_bar/custom_app_bar.dart';import 'package:nurhossen_s_application5/widgets/custom_bottom_bar.dart';class SignalDashboardTabContainerScreen extends StatefulWidget {const SignalDashboardTabContainerScreen({Key? key}) : super(key: key);

@override SignalDashboardTabContainerScreenState createState() =>  SignalDashboardTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class SignalDashboardTabContainerScreenState extends State<SignalDashboardTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildVectorColumn(context), Expanded(child: SingleChildScrollView(child: SizedBox(height: 922.v, child: TabBarView(controller: tabviewController, children: [SignalDashboardPage(), SignalDashboardPage(), SignalDashboardPage()]))))])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildVectorColumn(BuildContext context) { return Container(decoration: AppDecoration.outlineBlack9004, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 12.v), CustomAppBar(height: 24.v, leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVectorOnprimary, margin: EdgeInsets.fromLTRB(22.h, 4.v, 350.h, 4.v), onTap: () {onTapVector(context);})), SizedBox(height: 13.v), Container(height: 23.v, width: 352.h, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, tabs: [Tab(child: Text("Signal Group")), Tab(child: Column(children: [Text("Signal Dashboard"), CustomImageView(imagePath: ImageConstant.imgRectangle142, height: 4.v, width: 40.h, margin: EdgeInsets.only(top: 2.v))])), Tab(child: Text("Following Group"))]))])); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Group6: return AppRoutes.setOrderWithSinglePage; case BottomBarEnum.Frameonprimary: return "/"; case BottomBarEnum.User: return "/"; case BottomBarEnum.Group1101: return "/"; case BottomBarEnum.Group9: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.setOrderWithSinglePage: return SetOrderWithSinglePage(); default: return DefaultWidget();} } 

/// Navigates back to the previous screen.
onTapVector(BuildContext context) { Navigator.pop(context); } 
 }
