import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class Totalassettext1ItemWidget extends StatelessWidget {
  const Totalassettext1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 110.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          CustomImageView(
            imagePath: ImageConstant.imgGroup2034,
            height: 46.v,
            width: 42.h,
          ),
          Text(
            "Total Asset",
            style: CustomTextStyles.titleSmallPoppinsBlack900_1,
          ),
          Text(
            "345",
            style: CustomTextStyles.titleSmallPoppinsBlack900Bold,
          ),
        ],
      ),
    );
  }
}
