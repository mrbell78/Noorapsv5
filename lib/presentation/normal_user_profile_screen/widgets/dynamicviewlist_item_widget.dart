import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class DynamicviewlistItemWidget extends StatelessWidget {
  const DynamicviewlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 10.v,
            ),
            child: Text(
              "12-07-23",
              style: CustomTextStyles.bodySmallAmberA700,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 56.h,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "39.6758934",
                  style: CustomTextStyles.labelLargeAmberA700,
                ),
                Text(
                  "Profit",
                  style: CustomTextStyles.bodySmallLight10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
