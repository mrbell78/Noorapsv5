import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class DrenderingbiItemWidget extends StatelessWidget {
  const DrenderingbiItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.img3dRenderingBi,
      height: 130.v,
      width: 350.h,
      radius: BorderRadius.circular(
        10.h,
      ),
    );
  }
}
