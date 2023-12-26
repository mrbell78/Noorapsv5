import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class SetorderwithmultiItemWidget extends StatelessWidget {
  const SetorderwithmultiItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.h,
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Text(
        "27500",
        style: CustomTextStyles.labelLargeSemiBold,
      ),
    );
  }
}
