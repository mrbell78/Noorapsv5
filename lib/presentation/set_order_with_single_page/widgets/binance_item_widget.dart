import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class BinanceItemWidget extends StatelessWidget {
  const BinanceItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Text(
      "Select Exchange:",
      style: CustomTextStyles.titleSmallPoppinsBlack900,
    );
  }
}
