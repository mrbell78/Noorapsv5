import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class TakeprofitstrategycomponentItemWidget extends StatelessWidget {
  TakeprofitstrategycomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  String radioGroup1 = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 278.h,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Take Profit Strategy:",
                style: CustomTextStyles.titleSmallPoppinsBlack900,
              ),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: CustomRadioButton(
                        text: "Single",
                        value: "Single",
                        groupValue: radioGroup,
                        onChange: (value) {
                          radioGroup = value;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50.h),
                      child: CustomRadioButton(
                        text: "Multi",
                        value: "Multi",
                        groupValue: radioGroup1,
                        onChange: (value) {
                          radioGroup1 = value;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.v),
              Container(
                margin: EdgeInsets.only(right: 82.h),
                padding: EdgeInsets.all(10.h),
                decoration: AppDecoration.outlineBlack9001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder7,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgContrast,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(top: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 4.v,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Target 1: ",
                              style: CustomTextStyles.bodySmall10,
                            ),
                            TextSpan(
                              text: "70%",
                              style: CustomTextStyles.labelMediumPrimary,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        top: 1.v,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "-",
                        style: CustomTextStyles.bodySmall10_1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        top: 4.v,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Target 2: ",
                              style: CustomTextStyles.bodySmall10,
                            ),
                            TextSpan(
                              text: "30%",
                              style: CustomTextStyles.labelMediumPrimary,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Container(
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.outlineBlack9001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 184.h,
                  margin: EdgeInsets.only(top: 1.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgContrast,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.v),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Target 1: ",
                                style: CustomTextStyles.bodySmall10,
                              ),
                              TextSpan(
                                text: "50%",
                                style: CustomTextStyles.labelMediumPrimary,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4.v),
                        child: Text(
                          "-",
                          style: CustomTextStyles.bodySmall10_1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.v),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Target 2: ",
                                style: CustomTextStyles.bodySmall10,
                              ),
                              TextSpan(
                                text: "30%",
                                style: CustomTextStyles.labelMediumPrimary,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4.v),
                        child: Text(
                          "-",
                          style: CustomTextStyles.bodySmall10_1,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Target 3: ",
                          style: CustomTextStyles.bodySmall10,
                        ),
                        TextSpan(
                          text: "20%",
                          style: CustomTextStyles.labelMediumPrimary,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
