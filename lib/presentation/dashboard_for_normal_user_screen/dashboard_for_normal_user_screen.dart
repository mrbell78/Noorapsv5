import '../dashboard_for_normal_user_screen/widgets/dashboardfornormal_item_widget.dart';import '../dashboard_for_normal_user_screen/widgets/totalassettext_item_widget.dart';import 'package:flutter/material.dart';import 'package:nurhossen_s_application5/core/app_export.dart';import 'package:nurhossen_s_application5/presentation/set_order_with_single_page/set_order_with_single_page.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_leading_image.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_subtitle.dart';import 'package:nurhossen_s_application5/widgets/app_bar/custom_app_bar.dart';import 'package:nurhossen_s_application5/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class DashboardForNormalUserScreen extends StatelessWidget {DashboardForNormalUserScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 20.v), child: Column(children: [_buildTotalAssetText(context), SizedBox(height: 20.v), _buildDashboardForNormal(context)])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 43.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 19.h, top: 27.v, bottom: 22.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "Dashboard", margin: EdgeInsets.only(left: 20.h)), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildTotalAssetText(BuildContext context) { return SizedBox(height: 100.v, child: ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 9.h);}, itemCount: 3, itemBuilder: (context, index) {return TotalassettextItemWidget();})); } 
/// Section Widget
Widget _buildDashboardForNormal(BuildContext context) { return Container(decoration: AppDecoration.outlineBlack9003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), margin: EdgeInsets.symmetric(horizontal: 14.h), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 128.v, crossAxisCount: 3, mainAxisSpacing: 8.h, crossAxisSpacing: 8.h), physics: NeverScrollableScrollPhysics(), itemCount: 6, itemBuilder: (context, index) {return DashboardfornormalItemWidget(onTapRevenueDetails: () {onTapRevenueDetails(context);});})); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Group6: return AppRoutes.setOrderWithSinglePage; case BottomBarEnum.Frameonprimary: return "/"; case BottomBarEnum.User: return "/"; case BottomBarEnum.Group1101: return "/"; case BottomBarEnum.Group9: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.setOrderWithSinglePage: return SetOrderWithSinglePage(); default: return DefaultWidget();} } 
/// Navigates to the revenueDetailsScreen when the action is triggered.
onTapRevenueDetails(BuildContext context) { Navigator.pushNamed(context, AppRoutes.revenueDetailsScreen); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
