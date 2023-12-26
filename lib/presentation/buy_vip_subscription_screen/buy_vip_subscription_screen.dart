import '../buy_vip_subscription_screen/widgets/textprop_item_widget.dart';import 'package:flutter/material.dart';import 'package:nurhossen_s_application5/core/app_export.dart';import 'package:nurhossen_s_application5/presentation/set_order_with_single_page/set_order_with_single_page.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_leading_image.dart';import 'package:nurhossen_s_application5/widgets/app_bar/appbar_subtitle.dart';import 'package:nurhossen_s_application5/widgets/app_bar/custom_app_bar.dart';import 'package:nurhossen_s_application5/widgets/custom_bottom_bar.dart';import 'package:nurhossen_s_application5/widgets/custom_elevated_button.dart';import 'package:nurhossen_s_application5/widgets/custom_radio_button.dart';import 'package:nurhossen_s_application5/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class BuyVipSubscriptionScreen extends StatelessWidget {BuyVipSubscriptionScreen({Key? key}) : super(key: key);

String chooseYourPaymentMethod = "";

List<String> radioList = ["lbl_crypto_usdt", "lbl_google_pay"];

TextEditingController descriptionController = TextEditingController();

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 19.v), child: Column(children: [_buildChooseYourSubscription(context), SizedBox(height: 28.v), _buildChooseYourPayment(context), SizedBox(height: 33.v), CustomElevatedButton(text: "Pay Now"), SizedBox(height: 19.v), _buildDescription(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 42.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 18.h, top: 23.v, bottom: 26.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Buy VIP Subscription"), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildChooseYourSubscription(BuildContext context) { return Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text("Choose Your Subscription", style: theme.textTheme.titleMedium)), Padding(padding: EdgeInsets.only(bottom: 2.v), child: Text("Free trial", style: CustomTextStyles.titleMediumAmberA700))]), SizedBox(height: 18.v), GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 58.v, crossAxisCount: 2, mainAxisSpacing: 8.h, crossAxisSpacing: 8.h), physics: NeverScrollableScrollPhysics(), itemCount: 4, itemBuilder: (context, index) {return TextpropItemWidget();})]); } 
/// Section Widget
Widget _buildChooseYourPayment(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Choose Your Payment Method", style: theme.textTheme.titleMedium), SizedBox(height: 9.v), Row(children: [CustomRadioButton(text: "Crypto (USDT)", value: radioList[0], groupValue: chooseYourPaymentMethod, padding: EdgeInsets.fromLTRB(8.h, 16.v, 19.h, 16.v), decoration: RadioStyleHelper.fillGray, onChange: (value) {chooseYourPaymentMethod = value;}), Padding(padding: EdgeInsets.only(left: 8.h), child: CustomRadioButton(text: "Google Pay", value: radioList[1], groupValue: chooseYourPaymentMethod, padding: EdgeInsets.fromLTRB(8.h, 17.v, 30.h, 17.v), decoration: RadioStyleHelper.fillGray, onChange: (value) {chooseYourPaymentMethod = value;}))])]); } 
/// Section Widget
Widget _buildDescription(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Terms & Conditions", style: CustomTextStyles.titleLargeBlack900Medium), SizedBox(height: 15.v), CustomTextFormField(controller: descriptionController, hintText: "Lorem Ipsum is simply dummy text of the printing and typesetting  industry. Lorem Ipsum has been the   industry's standard dummy text   ever since the 1500s, when an unknown.  ", hintStyle: theme.textTheme.bodySmall!, textInputAction: TextInputAction.done, maxLines: 4, contentPadding: EdgeInsets.all(10.h), borderDecoration: TextFormFieldStyleHelper.fillGray1, fillColor: appTheme.gray100)]); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Group6: return AppRoutes.setOrderWithSinglePage; case BottomBarEnum.Frameonprimary: return "/"; case BottomBarEnum.User: return "/"; case BottomBarEnum.Group1101: return "/"; case BottomBarEnum.Group9: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.setOrderWithSinglePage: return SetOrderWithSinglePage(); default: return DefaultWidget();} } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
