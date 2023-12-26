import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/widgets/custom_elevated_button.dart';
import 'package:nurhossen_s_application5/widgets/custom_outlined_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../log_in_screen/widgets/rectangle_item_widget.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatefulWidget {
  LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildSliderSection(context),
                    SizedBox(height: 46.v),
                    Text("Here will be slogan",
                        style: CustomTextStyles.headlineLargeBlack900),
                    SizedBox(height: 49.v),
                    _buildLoginSection(context),
                    SizedBox(height: 5.v)
                  ])),
            )));
  }

  /// Section Widget
  Widget _buildSliderSection(BuildContext context) {
    return SizedBox(
        height: 327.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Container(
           color: appTheme.amberA700,
            child: CarouselSlider.builder(
                options: CarouselOptions(
                    height: 337.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                       sliderIndex = index;
                      });
                    }),
                itemCount: 2,
                itemBuilder: (context, index, realIndex) {
                  return RectangleItemWidget();
                }),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
               height: 20.v,
               color: Colors.white.withOpacity(0.5),
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: AnimatedSmoothIndicator(
                      activeIndex: sliderIndex,
                      count: 2,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                          spacing: 10,
                          activeDotColor: appTheme.amberA700,
                          dotColor: theme.colorScheme.onPrimary,
                          dotHeight: 8.v,
                          dotWidth: 8.h)),
                ),
              ))
        ]));
  }

  /// Section Widget
  Widget _buildLoginSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 48.h),
        child: Column(children: [
          CustomElevatedButton(
              height: 60.v,
              text: "Log in",
              margin: EdgeInsets.symmetric(horizontal: 27.h),
              buttonStyle: CustomButtonStyles.fillAmberA,
              buttonTextStyle: CustomTextStyles.headlineLargeMedium,
              onPressed: () {
                onTapLogIn(context);
              }),
          SizedBox(height: 20.v),
          CustomOutlinedButton(
              height: 60.v,
              text: "Sign up",
              margin: EdgeInsets.symmetric(horizontal: 27.h),
              buttonStyle: CustomButtonStyles.outlineAmberA,
              buttonTextStyle: CustomTextStyles.headlineLargeAmberA700,
              onPressed: () {
                onTapSignUp(context);
              }),
          SizedBox(height: 11.v),
          GestureDetector(
              onTap: () {
                onTapTxtToknowmoreabout(context);
              },
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "To ",
                        style: CustomTextStyles.titleLargeAmberA700Medium),
                    TextSpan(
                        text: "know ",
                        style: CustomTextStyles.titleLargeAmberA700Medium),
                    TextSpan(
                        text: "more about ",
                        style: CustomTextStyles.titleLargeAmberA700Medium),
                    TextSpan(
                        text: "Xpertbit",
                        style: CustomTextStyles.titleLargeAmberA700Medium)
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Navigates to the logInOneScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInOneScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  /// Navigates to the knowMoreAboutXpertbitScreen when the action is triggered.
  onTapTxtToknowmoreabout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.knowMoreAboutXpertbitScreen);
  }
}
