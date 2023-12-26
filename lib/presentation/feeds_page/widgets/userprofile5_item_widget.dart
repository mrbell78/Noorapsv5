import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile5ItemWidget extends StatelessWidget {
  const Userprofile5ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClock,
                  height: 45.v,
                  width: 46.h,
                ),
                Container(
                  height: 41.v,
                  width: 77.h,
                  margin: EdgeInsets.only(
                    left: 9.h,
                    bottom: 5.v,
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Alena",
                          style: CustomTextStyles.titleLargeBlack900,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFrameLightBlue50023x24,
                        height: 23.v,
                        width: 24.h,
                        alignment: Alignment.topRight,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 1.h),
            decoration: AppDecoration.outlineBlack9005.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.img379768898831,
              height: 133.v,
              width: 330.h,
              radius: BorderRadius.circular(
                10.h,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            width: 289.h,
            margin: EdgeInsets.only(
              left: 1.h,
              right: 42.h,
            ),
            child: Text(
              "Lorem ipsum is a placeholder text commonly used to demonstrate the",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyLarge!.copyWith(
                height: 1.13,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Text(
                    "Link: https/loram/ipsum.com",
                    style: CustomTextStyles.bodyLargeLightblue500,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.v),
                  child: Text(
                    "11:10 am",
                    style: CustomTextStyles.bodySmallInter_1,
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
