import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class SingleItemWidget extends StatelessWidget {
  const SingleItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Text(
      "Take Profit Strategy:",
      style: CustomTextStyles.titleSmallPoppinsBlack900,
    );
  }
}
