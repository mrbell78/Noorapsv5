import 'package:flutter/material.dart';import 'package:nurhossen_s_application5/core/app_export.dart';import 'package:nurhossen_s_application5/presentation/my_signal_group_page/my_signal_group_page.dart';import 'package:nurhossen_s_application5/presentation/set_order_with_single_page/set_order_with_single_page.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_leading_image.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_trailing_image.dart';import 'package:nurhossen_s_application5/widgets/app_bar/custom_app_bar.dart';import 'package:nurhossen_s_application5/widgets/custom_bottom_bar.dart';class MySignalGroupTabContainerScreen extends StatefulWidget {const MySignalGroupTabContainerScreen({Key? key}) : super(key: key);

@override MySignalGroupTabContainerScreenState createState() =>  MySignalGroupTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class MySignalGroupTabContainerScreenState extends State<MySignalGroupTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); tabviewController = TabController(length: 5, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildArrowLeft(context), SizedBox(height: 738.v, child: TabBarView(controller: tabviewController, children: [MySignalGroupPage(), MySignalGroupPage(), MySignalGroupPage(), MySignalGroupPage(), MySignalGroupPage()]))])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildArrowLeft(BuildContext context) { return SizedBox(height: 73.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomRight, children: [CustomAppBar(leadingWidth: 43.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 19.h, top: 12.v, bottom: 37.v), onTap: () {onTapArrowLeft(context);}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgSearchOnprimary, margin: EdgeInsets.fromLTRB(21.h, 16.v, 21.h, 41.v))], styleType: Style.bgShadow), SizedBox(height: 25.v, width: 369.h, child: TabBar(controller: tabviewController, isScrollable: true, tabs: [Tab(child: Column(children: [Text("My Signal Group"), CustomImageView(imagePath: ImageConstant.imgRectangle142, height: 4.v, width: 40.h, margin: EdgeInsets.only(top: 2.v))])), Tab(child: Text("VIP Signal")), Tab(child: Text("Signal Group")), Tab(child: Text("Free Signal")), Tab(child: Text("Following Group"))]))])); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Group6: return AppRoutes.setOrderWithSinglePage; case BottomBarEnum.Frameonprimary: return "/"; case BottomBarEnum.User: return "/"; case BottomBarEnum.Group1101: return "/"; case BottomBarEnum.Group9: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.setOrderWithSinglePage: return SetOrderWithSinglePage(); default: return DefaultWidget();} } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
