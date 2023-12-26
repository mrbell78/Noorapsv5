import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/widgets/custom_elevated_button.dart';
import 'package:qr_flutter/qr_flutter.dart';

// ignore_for_file: must_be_immutable
class DepositDialog extends StatelessWidget {
  const DepositDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.h,
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "Chain",
                    style: CustomTextStyles.titleSmallPoppinsBlack90015,
                  ),
                ),
                CustomElevatedButton(
                  height: 38.v,
                  width: 91.h,
                  text: "TRC20",
                  margin: EdgeInsets.only(left: 10.h),
                  buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          Text(
            "Deposit USDT Only",
            style: CustomTextStyles.titleMedium18,
          ),
          SizedBox(height: 10.v),
          QrImageView(
            data: 'https://www.google.com',
            size: 128.v,
          ),
          SizedBox(height: 12.v),
          Text(
            "Current Balance",
            style: CustomTextStyles.bodyLargeBlack900,
          ),
          SizedBox(height: 3.v),
          Text(
            "45.78 USDT",
            style: CustomTextStyles.titleMediumBlack900_1,
          ),
          SizedBox(height: 13.v),
          Container(
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Row(
              children: [
                Text(
                  "425534627762777362772881",
                  style: CustomTextStyles.bodyMedium15,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUpload,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(
                    left: 36.h,
                    top: 3.v,
                    bottom: 2.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 26.v),
          CustomElevatedButton(
            text: "Okay",
          ),
        ],
      ),
    );
  }
}
