import '../normal_user_profile_screen/widgets/dynamicviewlist_item_widget.dart';import 'package:flutter/material.dart';import 'package:nurhossen_s_application5/core/app_export.dart';import 'package:nurhossen_s_application5/presentation/set_order_with_single_page/set_order_with_single_page.dart';import 'package:nurhossen_s_application5/widgets/custom_bottom_bar.dart';import 'package:nurhossen_s_application5/widgets/custom_outlined_button.dart';
// ignore_for_file: must_be_immutable
class NormalUserProfileScreen extends StatelessWidget {NormalUserProfileScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildMainColumn(context), SizedBox(height: 19.v), _buildDataIsCountedStack(context), SizedBox(height: 28.v), _buildDynamicViewList(context)])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildMainColumn(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 18.h), decoration: AppDecoration.outlineBlack9004, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 17.v), Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgArrowLeftOnprimary, height: 23.v, width: 24.h, margin: EdgeInsets.only(top: 30.v, bottom: 55.v), onTap: () {onTapImgArrowLeft(context);}), Padding(padding: EdgeInsets.only(left: 113.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 79.v, width: 83.h, child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.centerLeft, child: Container(height: 79.v, width: 80.h, padding: EdgeInsets.all(2.h), decoration: AppDecoration.outlineOnPrimary.copyWith(borderRadius: BorderRadiusStyle.circleBorder42), child: CustomImageView(imagePath: ImageConstant.imgFrontViewYoun72x72, height: 72.adaptSize, width: 72.adaptSize, radius: BorderRadius.circular(36.h), alignment: Alignment.center))), CustomOutlinedButton(height: 27.v, width: 28.h, text: "R 1", margin: EdgeInsets.only(bottom: 4.v), buttonStyle: CustomButtonStyles.outlineOnPrimary, buttonTextStyle: CustomTextStyles.labelMediumOnPrimary_1, alignment: Alignment.bottomRight)])), Padding(padding: EdgeInsets.only(left: 9.h), child: Text("Mical", style: CustomTextStyles.headlineSmallInterOnPrimary))]))]), SizedBox(height: 4.v), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 63.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Rewards", style: theme.textTheme.titleSmall), Text("Team", style: theme.textTheme.titleSmall)]))), SizedBox(height: 3.v), CustomImageView(imagePath: ImageConstant.imgRectangle142, height: 4.v, width: 30.h, margin: EdgeInsets.only(left: 78.h))])); } 
/// Section Widget
Widget _buildDataIsCountedStack(BuildContext context) { return SizedBox(height: 174.v, width: 348.h, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 13.v), decoration: AppDecoration.fillBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 41.h), child: Text("Data is counted by every hour", style: CustomTextStyles.bodySmallOnPrimary)), SizedBox(height: 7.v), RichText(text: TextSpan(children: [TextSpan(text: "Daily Statistics based on", style: CustomTextStyles.bodySmallOnPrimary_1), TextSpan(text: " USA time (UTC+8)", style: CustomTextStyles.labelLargeOnPrimary)]), textAlign: TextAlign.left), SizedBox(height: 42.v)]))), Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.symmetric(horizontal: 16.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v), decoration: AppDecoration.fillAmberA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 6.v), Padding(padding: EdgeInsets.only(right: 5.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("Total Commission Today ", style: CustomTextStyles.labelMediumOnPrimary)), Text("Cumulative Profit", style: CustomTextStyles.labelMediumOnPrimary)])), SizedBox(height: 9.v), Padding(padding: EdgeInsets.only(right: 15.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("23.456758", style: CustomTextStyles.labelLargeOnPrimarySemiBold), Text("23.45906758", style: CustomTextStyles.labelLargeOnPrimarySemiBold)])), SizedBox(height: 6.v), Padding(padding: EdgeInsets.only(right: 46.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("~ 34.1 USD", style: CustomTextStyles.labelMediumOnPrimary), Text("~ 14.1 USD", style: CustomTextStyles.labelMediumOnPrimary)]))])))])); } 
/// Section Widget
Widget _buildDynamicViewList(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 21.h), padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 21.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 17.v);}, itemCount: 4, itemBuilder: (context, index) {return DynamicviewlistItemWidget();})); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Group6: return AppRoutes.setOrderWithSinglePage; case BottomBarEnum.Frameonprimary: return "/"; case BottomBarEnum.User: return "/"; case BottomBarEnum.Group1101: return "/"; case BottomBarEnum.Group9: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.setOrderWithSinglePage: return SetOrderWithSinglePage(); default: return DefaultWidget();} } 

/// Navigates back to the previous screen.
onTapImgArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
