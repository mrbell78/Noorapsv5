import '../signal_group_screen/widgets/userprofilesection_item_widget.dart';import 'package:flutter/material.dart';import 'package:nurhossen_s_application5/core/app_export.dart';import 'package:nurhossen_s_application5/presentation/set_order_with_single_page/set_order_with_single_page.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_leading_image.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_trailing_image.dart';import 'package:nurhossen_s_application5/widgets/app_bar/custom_app_bar.dart';import 'package:nurhossen_s_application5/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class SignalGroupScreen extends StatelessWidget {SignalGroupScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildSignalSection(context), SizedBox(height: 20.v), _buildUserProfileSection(context), Spacer()])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildSignalSection(BuildContext context) { return Container(decoration: AppDecoration.outlineBlack9004, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 12.v), CustomAppBar(height: 24.v, leadingWidth: 42.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 18.h), onTap: () {onTapArrowLeft(context);}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgSearchOnprimary, margin: EdgeInsets.symmetric(horizontal: 22.h, vertical: 4.v))]), SizedBox(height: 12.v), Padding(padding: EdgeInsets.only(left: 55.h, right: 68.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Column(children: [Text("Signal Group", style: theme.textTheme.titleSmall), SizedBox(height: 2.v), SizedBox(width: 100.h, child: Divider(color: theme.colorScheme.onPrimary))])), Padding(padding: EdgeInsets.only(bottom: 7.v), child: Text("Be a trader", style: theme.textTheme.titleSmall))]))])); } 
/// Section Widget
Widget _buildUserProfileSection(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 20.v);}, itemCount: 3, itemBuilder: (context, index) {return UserprofilesectionItemWidget();})); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Group6: return AppRoutes.setOrderWithSinglePage; case BottomBarEnum.Frameonprimary: return "/"; case BottomBarEnum.User: return "/"; case BottomBarEnum.Group1101: return "/"; case BottomBarEnum.Group9: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.setOrderWithSinglePage: return SetOrderWithSinglePage(); default: return DefaultWidget();} } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
