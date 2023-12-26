import 'package:flutter/material.dart';import 'package:nurhossen_s_application5/core/app_export.dart';import 'package:nurhossen_s_application5/presentation/set_order_with_single_page/set_order_with_single_page.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_leading_image.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_subtitle.dart';import 'package:nurhossen_s_application5/widgets/app_bar/custom_app_bar.dart';import 'package:nurhossen_s_application5/widgets/custom_bottom_bar.dart';import 'package:nurhossen_s_application5/widgets/custom_elevated_button.dart';import 'package:nurhossen_s_application5/widgets/custom_pin_code_text_field.dart';import 'package:nurhossen_s_application5/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class WithdrawFourScreen extends StatelessWidget {WithdrawFourScreen({Key? key}) : super(key: key);

TextEditingController phoneController = TextEditingController();

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 19.v), Expanded(child: SingleChildScrollView(child: _buildWithdrawFourColumn(context)))])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 43.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 19.h, top: 27.v, bottom: 22.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "Withdraw USDT", margin: EdgeInsets.only(left: 20.h)), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildPhoneColumn(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Phone", style: CustomTextStyles.titleMedium18), SizedBox(height: 6.v), CustomTextFormField(controller: phoneController, textInputAction: TextInputAction.done, borderDecoration: TextFormFieldStyleHelper.outlineBlack, fillColor: appTheme.gray100)]); } 
/// Section Widget
Widget _buildWithdrawFourColumn(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 35.h, right: 35.h, bottom: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Email", style: CustomTextStyles.titleMedium18), SizedBox(height: 6.v), CustomPinCodeTextField(context: context, onChanged: (value) {}), SizedBox(height: 2.v), Text("Code has sent to your email.", style: theme.textTheme.bodySmall), _buildPhoneColumn(context), SizedBox(height: 4.v), Text("Code has sent to your phone.", style: theme.textTheme.bodySmall), SizedBox(height: 11.v), CustomElevatedButton(text: "Confirm", onPressed: () {onTapConfirm(context);})])); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Group6: return AppRoutes.setOrderWithSinglePage; case BottomBarEnum.Frameonprimary: return "/"; case BottomBarEnum.User: return "/"; case BottomBarEnum.Group1101: return "/"; case BottomBarEnum.Group9: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.setOrderWithSinglePage: return SetOrderWithSinglePage(); default: return DefaultWidget();} } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the withdrawScreen when the action is triggered.
onTapConfirm(BuildContext context) { Navigator.pushNamed(context, AppRoutes.withdrawScreen); } 
 }
