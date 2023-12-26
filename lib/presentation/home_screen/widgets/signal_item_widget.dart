import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class SignalItemWidget extends StatelessWidget {

  final moduleName;
  final moudleImage;
  const SignalItemWidget({Key? key,this.moduleName,this.moudleImage})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 11.v),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 100.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          CustomImageView(
            imagePath: moudleImage??"",
            height: 58.v,
            width: 90.h,
            fit: BoxFit.fill,
            radius: BorderRadius.all(Radius.circular(10)),
          ),
          SizedBox(height: 1.v),
          Text(
            "${moduleName}",
            style: CustomTextStyles.labelLargeOnSecondaryContainer,
          ),
        ],
      ),
    );
  }
}
