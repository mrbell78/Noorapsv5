import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class RectangleItemWidget extends StatelessWidget {
  const RectangleItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.img12463623497642,
        height: 337.v,
        width: 357.h,
        margin: EdgeInsets.only(
          left: 16.h,
          right: 17.h,
        ),
      ),
    );
  }
}
