import 'package:flutter/material.dart';import 'package:nurhossen_s_application5/core/app_export.dart';import 'package:nurhossen_s_application5/presentation/set_order_with_single_page/set_order_with_single_page.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_leading_image.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_subtitle.dart';import 'package:nurhossen_s_application5/widgets/app_bar/custom_app_bar.dart';import 'package:nurhossen_s_application5/widgets/custom_bottom_bar.dart';import 'package:nurhossen_s_application5/widgets/custom_elevated_button.dart';import 'package:nurhossen_s_application5/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class WithdrawThreeScreen extends StatelessWidget {WithdrawThreeScreen({Key? key}) : super(key: key);

TextEditingController nameController = TextEditingController();

TextEditingController addressController = TextEditingController();

TextEditingController quantityController = TextEditingController();

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 20.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 35.h, right: 35.h, bottom: 5.v), child: Column(children: [CustomTextFormField(controller: nameController, hintText: "Chain Name: TRC20", hintStyle: CustomTextStyles.bodyLargeBlack900, contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.v), borderDecoration: TextFormFieldStyleHelper.fillGrayTL7, fillColor: appTheme.gray100), SizedBox(height: 19.v), _buildWithdrawForm(context), SizedBox(height: 21.v), _buildQuantityForm(context), SizedBox(height: 11.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 3.h), child: Text("Available 21.65 USDT", style: CustomTextStyles.bodySmallLight))), SizedBox(height: 28.v), _buildTransactionFeesForm(context), SizedBox(height: 20.v), _buildOperationReminderForm(context), SizedBox(height: 32.v), CustomElevatedButton(text: "Confirm", onPressed: () {onTapConfirm(context);})]))))]))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 43.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 19.h, top: 27.v, bottom: 22.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "Withdraw USDT", margin: EdgeInsets.only(left: 20.h)), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildWithdrawForm(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Wallet Address", style: CustomTextStyles.titleMedium18), SizedBox(height: 12.v), CustomTextFormField(controller: addressController, hintText: "Please enter your TRC20 wallet address", hintStyle: CustomTextStyles.bodyMediumBlack900, suffix: Container(margin: EdgeInsets.fromLTRB(14.h, 21.v, 8.h, 21.v), child: CustomImageView(imagePath: ImageConstant.imgVector, height: 18.adaptSize, width: 18.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 60.v), contentPadding: EdgeInsets.only(left: 8.h, top: 19.v, bottom: 19.v), borderDecoration: TextFormFieldStyleHelper.fillGrayTL7, fillColor: appTheme.gray100)]); } 
/// Section Widget
Widget _buildQuantityForm(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Quantity", style: CustomTextStyles.titleMedium18), SizedBox(height: 10.v), CustomTextFormField(controller: quantityController, hintText: "The minimum number of withdraw is 10 USDT", hintStyle: CustomTextStyles.bodySmallBlack900, textInputAction: TextInputAction.done, textInputType: TextInputType.number, contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 21.v), borderDecoration: TextFormFieldStyleHelper.fillGrayTL7, fillColor: appTheme.gray100)]); } 
/// Section Widget
Widget _buildTransactionFeesForm(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Padding(padding: EdgeInsets.only(right: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Transaction Fees", style: CustomTextStyles.titleMediumBlack900), Text("2 USDT", style: theme.textTheme.bodyLarge)])), SizedBox(height: 16.v), Text("Arrival Quantity", style: CustomTextStyles.titleMediumBlack900)])); } 
/// Section Widget
Widget _buildOperationReminderForm(BuildContext context) { return Container(width: 320.h, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 9.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Text("Operation Reminder", style: CustomTextStyles.titleMediumBlack900), SizedBox(height: 7.v), Container(width: 244.h, margin: EdgeInsets.only(right: 43.h), child: Text("Do not Transfer USDT assets to non-USDT addresses, otherwise they can’t be retrieved.", maxLines: 3, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallBlack900)), SizedBox(height: 1.v)])); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Group6: return AppRoutes.setOrderWithSinglePage; case BottomBarEnum.Frameonprimary: return "/"; case BottomBarEnum.User: return "/"; case BottomBarEnum.Group1101: return "/"; case BottomBarEnum.Group9: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.setOrderWithSinglePage: return SetOrderWithSinglePage(); default: return DefaultWidget();} } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the withdrawOneScreen when the action is triggered.
onTapConfirm(BuildContext context) { Navigator.pushNamed(context, AppRoutes.withdrawOneScreen); } 
 }
