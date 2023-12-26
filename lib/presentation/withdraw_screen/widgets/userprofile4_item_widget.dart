import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Userprofile4ItemWidget extends StatelessWidget {
  const Userprofile4ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ID 09",
                style: CustomTextStyles.titleMedium18,
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 3.v,
                  bottom: 5.v,
                ),
                child: Text(
                  "2023-10-02",
                  style: CustomTextStyles.bodySmallLight,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  top: 3.v,
                  bottom: 5.v,
                ),
                child: Text(
                  "10:45:09",
                  style: CustomTextStyles.bodySmallLight,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          CustomElevatedButton(
            height: 45.v,
            text: "Tron Transaction ID: 345677765h78",
            rightIcon: Container(
              margin: EdgeInsets.only(left: 19.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgUpload,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillOnPrimary,
            buttonTextStyle: CustomTextStyles.bodyMedium13,
          ),
          SizedBox(height: 16.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Amount: ",
                  style: CustomTextStyles.bodyMedium15_1,
                ),
                TextSpan(
                  text: "234.87 USDT",
                  style: CustomTextStyles.titleSmallPoppinsBlack90015_1,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 8.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Transaction Status: ",
                  style: CustomTextStyles.bodyMedium15_1,
                ),
                TextSpan(
                  text: "SUCCESS",
                  style: CustomTextStyles.titleSmallPoppinsPrimary15,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
