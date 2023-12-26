import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class TradingcomponentlistItemWidget extends StatelessWidget {
  const TradingcomponentlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlack9007.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                height: 25.v,
                width: 46.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUserPrimary,
                      height: 25.v,
                      width: 46.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text(
                          "BUY",
                          style: CustomTextStyles.bodySmallOnPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "BTC / ",
                        style: CustomTextStyles.titleMediumBold_1,
                      ),
                      TextSpan(
                        text: "USDT",
                        style: CustomTextStyles.titleMedium_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          SizedBox(height: 7.v),
          Text(
            "-2.09345 | 10X",
            style: CustomTextStyles.bodyMediumOnPrimaryContainer_1,
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(right: 27.h),
            child: Row(
              children: [
                Text(
                  "Entry Price",
                  style: theme.textTheme.bodySmall,
                ),
                Spacer(
                  flex: 44,
                ),
                Text(
                  "Liquidation",
                  style: theme.textTheme.bodySmall,
                ),
                Spacer(
                  flex: 55,
                ),
                Text(
                  "Mark Price",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(right: 41.h),
            child: Row(
              children: [
                Text(
                  "0.234",
                  style: theme.textTheme.labelLarge,
                ),
                Spacer(
                  flex: 38,
                ),
                Text(
                  "0",
                  style: theme.textTheme.labelLarge,
                ),
                Spacer(
                  flex: 61,
                ),
                Text(
                  "0.34567",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Margin",
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "0.00000",
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
              Spacer(
                flex: 56,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Margin Type",
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "cross",
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
              Spacer(
                flex: 43,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Isolated Wallet",
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "0",
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
