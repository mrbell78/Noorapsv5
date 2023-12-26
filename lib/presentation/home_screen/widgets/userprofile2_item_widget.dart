import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  const Userprofile2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 126.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 84.v,
              width: 93.h,
              margin: EdgeInsets.only(right: 8.h),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 84.adaptSize,
                      width: 84.adaptSize,
                      padding: EdgeInsets.all(3.h),
                      decoration: AppDecoration.outlineAmberA.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder42,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFrontViewYoun76x76,
                        height: 76.adaptSize,
                        width: 76.adaptSize,
                        radius: BorderRadius.circular(
                          38.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 30.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                      padding: EdgeInsets.all(8.h),
                      decoration: AppDecoration.fillAmberA.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder14,
                      ),
                      child: Text(
                        "R 1",
                        style: CustomTextStyles.labelMediumInterOnPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 2.v),
          SizedBox(
            height: 26.v,
            width: 117.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Alena Smith",
                    style: theme.textTheme.labelMedium,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Team Commission: ",
                          style: CustomTextStyles.bodySmall8,
                        ),
                        TextSpan(
                          text: "20 24 hr",
                          style: CustomTextStyles.labelSmallPrimary,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
