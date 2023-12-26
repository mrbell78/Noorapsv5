import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile7ItemWidget extends StatelessWidget {
  const Userprofile7ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13.v),
      decoration: AppDecoration.outlineAmberA7002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 66.adaptSize,
            width: 66.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
            padding: EdgeInsets.all(2.h),
            decoration: AppDecoration.outlineAmberA.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder33,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgFrontViewYoun,
              height: 59.adaptSize,
              width: 59.adaptSize,
              radius: BorderRadius.circular(
                29.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Container(
            height: 57.v,
            width: 146.h,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 3.v,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Abir Ahmed",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "1.5k follower",
                    style: CustomTextStyles.bodyLargeOnSecondaryContainer,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 28.v,
            width: 105.h,
            margin: EdgeInsets.only(
              top: 35.v,
              bottom: 4.v,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 28.v,
                    width: 105.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        14.h,
                      ),
                      border: Border.all(
                        color: appTheme.amberA700,
                        width: 1.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Following",
                    style: theme.textTheme.bodyLarge,
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
