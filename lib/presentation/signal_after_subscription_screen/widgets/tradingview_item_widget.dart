import '../widgets/signalaftersubscription_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class TradingviewItemWidget extends StatelessWidget {
  const TradingviewItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.v),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              right: 13.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomElevatedButton(
                  height: 40.v,
                  width: 40.h,
                  text: "B",
                  margin: EdgeInsets.only(bottom: 23.v),
                  buttonStyle: CustomButtonStyles.fillLightBlueA,
                  buttonTextStyle: CustomTextStyles.titleLargeOnPrimary,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 9.v,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 151.h,
                        margin: EdgeInsets.only(left: 1.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "BTC ",
                                    style: CustomTextStyles.titleMediumBold_1,
                                  ),
                                  TextSpan(
                                    text: "/USDT",
                                    style: CustomTextStyles.bodySmall_1,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 3.v,
                                bottom: 2.v,
                              ),
                              child: Text(
                                "-SHORT (10X)",
                                style: CustomTextStyles
                                    .bodySmallOnPrimaryContainer,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 6.v),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "price: ",
                              style: CustomTextStyles.bodyMedium15_1,
                            ),
                            TextSpan(
                              text: "27000 ",
                              style: CustomTextStyles
                                  .titleSmallPoppinsBlack90015_1,
                            ),
                            TextSpan(
                              text: "(-1.30%)",
                              style:
                                  CustomTextStyles.bodyMediumOnPrimaryContainer,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    top: 9.v,
                    bottom: 30.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Status:",
                          style: theme.textTheme.bodyLarge,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "Active",
                          style: CustomTextStyles.titleMediumPrimary_1,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              right: 13.h,
            ),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 30.v,
                crossAxisCount: 4,
                mainAxisSpacing: 15.h,
                crossAxisSpacing: 15.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 9,
              itemBuilder: (context, index) {
                return SignalaftersubscriptionItemWidget();
              },
            ),
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                right: 54.h,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Text(
                      "Coinbase",
                      style: CustomTextStyles.titleMediumLightblue500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Text(
                      "Bybit",
                      style: CustomTextStyles.titleMediumOnSecondaryContainer,
                    ),
                  ),
                  Container(
                    width: 137.h,
                    margin: EdgeInsets.only(
                      left: 11.h,
                      bottom: 2.v,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Binance",
                          style: CustomTextStyles.titleMediumAmberA700,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 2.h,
                            top: 5.v,
                          ),
                          child: Text(
                            "(2min Ago)",
                            style: CustomTextStyles.labelLargeSemiBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: appTheme.blueGray10001,
          ),
          SizedBox(height: 9.v),
          CustomElevatedButton(
            height: 45.v,
            text: "Set Order >",
            margin: EdgeInsets.only(
              left: 18.h,
              right: 13.h,
            ),
            buttonTextStyle: CustomTextStyles.titleLargeOnPrimaryMedium,
          ),
        ],
      ),
    );
  }
}
