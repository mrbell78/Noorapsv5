import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class DashboardfornormalItemWidget extends StatelessWidget {
  DashboardfornormalItemWidget({
    Key? key,
    this.onTapRevenueDetails,
  }) : super(
          key: key,
        );

  VoidCallback? onTapRevenueDetails;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRevenueDetails!.call();
      },
      child: Column(
        children: [
          Container(
            height: 85.v,
            width: 90.h,
            padding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 18.v,
            ),
            decoration: AppDecoration.fillOnPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1705,
              height: 46.v,
              width: 37.h,
              alignment: Alignment.topLeft,
            ),
          ),
          SizedBox(height: 9.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 16.h),
              child: Text(
                "Revenue",
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          Text(
            "Details",
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
