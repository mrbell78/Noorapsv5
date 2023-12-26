import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget({
    Key? key,
    this.onTapLeave,
  }) : super(
          key: key,
        );

  VoidCallback? onTapLeave;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 67.adaptSize,
            width: 67.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 66.adaptSize,
                    width: 66.adaptSize,
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
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 28.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.fillAmberA.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder14,
                    ),
                    child: Text(
                      "Level 1",
                      style: CustomTextStyles.labelSmallOnPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 10.v,
              bottom: 15.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mical",
                  style: theme.textTheme.headlineSmall,
                ),
                Text(
                  "1.5k follower",
                  style: CustomTextStyles.bodyLargeOnSecondaryContainer,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Win Rate ",
                        style: CustomTextStyles.bodySmallOnSecondaryContainer_1,
                      ),
                      TextSpan(
                        text: "50%",
                        style: CustomTextStyles.bodySmallAmberA700_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 16.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "5.0",
                        style: CustomTextStyles.bodyLargeAmberA70018,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 14.v,
                        width: 16.h,
                        margin: EdgeInsets.only(
                          left: 5.h,
                          top: 3.v,
                          bottom: 9.v,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                CustomOutlinedButton(
                  height: 28.v,
                  width: 82.h,
                  text: "Leave",
                  buttonTextStyle: CustomTextStyles.bodyLargeInter,
                  onPressed: () {
                    onTapLeave!.call();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
