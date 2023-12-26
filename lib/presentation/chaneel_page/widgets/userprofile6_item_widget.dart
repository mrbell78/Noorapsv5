import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Userprofile6ItemWidget extends StatelessWidget {
  const Userprofile6ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
              left: 6.h,
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
          Spacer(),
          CustomOutlinedButton(
            height: 28.v,
            width: 82.h,
            text: "Follow",
            margin: EdgeInsets.only(
              top: 35.v,
              bottom: 4.v,
            ),
            buttonTextStyle: theme.textTheme.bodyLarge!,
          ),
        ],
      ),
    );
  }
}
