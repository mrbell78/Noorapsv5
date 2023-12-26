import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  const Userprofile3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 126.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 84.v,
              width: 93.h,
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
                      height: 30.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v,right: 8.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.h,
                        vertical: 8.v,
                      ),
                      decoration: AppDecoration.fillAmberA.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder14,
                      ),
                      child: Center(
                        child: Text(
                          "Level 1",
                          style: CustomTextStyles.poppinsOnPrimarySemiBold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 3.v),
          SizedBox(
            height: 26.v,
            width: 62.h,
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
                  child: Text(
                    "1.5k Follower",
                    style: CustomTextStyles.bodySmall8_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          CustomOutlinedButton(
            height: 20.v,
            width: 60.h,
            text: "Follow",
            buttonStyle: CustomButtonStyles.outlineAmberATL101,
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
