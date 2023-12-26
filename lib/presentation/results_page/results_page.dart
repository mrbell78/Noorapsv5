import '../results_page/widgets/results_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ResultsPage extends StatefulWidget {
  const ResultsPage({Key? key})
      : super(
          key: key,
        );

  @override
  ResultsPageState createState() => ResultsPageState();
}

class ResultsPageState extends State<ResultsPage>
    with AutomaticKeepAliveClientMixin<ResultsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              _buildNetProfitSignals(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNetProfitSignals(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 34.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.outlineBlack900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder7,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Net Profit Signals",
                  style: CustomTextStyles.titleMediumPrimary18,
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  right: 37.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Total Signal",
                            style: CustomTextStyles.labelLargeSemiBold_1,
                          ),
                          TextSpan(
                            text: ":",
                            style: theme.textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "100",
                            style: CustomTextStyles.labelLargeSemiBold_1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Win rate",
                            style: CustomTextStyles.labelLargeSemiBold_1,
                          ),
                          TextSpan(
                            text: ":",
                            style: theme.textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "90%",
                            style: CustomTextStyles.labelLargePrimary,
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
                  left: 13.h,
                  right: 47.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Total Win",
                              style: CustomTextStyles.labelLargeSemiBold_1,
                            ),
                            TextSpan(
                              text: ":",
                              style: theme.textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "90",
                              style: CustomTextStyles.labelLargePrimary,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Total Fail",
                            style: CustomTextStyles.labelLargeSemiBold_1,
                          ),
                          TextSpan(
                            text: ":",
                            style: theme.textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "10",
                            style:
                                CustomTextStyles.labelLargeOnPrimaryContainer,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  right: 24.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Total Profit:",
                              style: theme.textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "+64965%",
                              style: CustomTextStyles.labelLargePrimary,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Last 24h:",
                            style: theme.textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "+965%",
                            style: CustomTextStyles.labelLargePrimary,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.v),
              Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Last Week:",
                              style: theme.textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "+4965%",
                              style: CustomTextStyles.labelLargePrimary,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Last Month:",
                            style: theme.textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "+4965%",
                            style: CustomTextStyles.labelLargePrimary,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.v),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.h),
          padding: EdgeInsets.symmetric(vertical: 6.v),
          decoration: AppDecoration.outlineBlack900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder7,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 14.v),
              Container(
                margin: EdgeInsets.only(left: 4.h),
                padding: EdgeInsets.symmetric(horizontal: 13.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomElevatedButton(
                          height: 40.v,
                          width: 40.h,
                          text: "B",
                          buttonStyle: CustomButtonStyles.fillLightBlueA,
                          buttonTextStyle: CustomTextStyles.titleLargeOnPrimary,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            top: 9.v,
                            bottom: 6.v,
                          ),
                          child: RichText(
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
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 12.v,
                            bottom: 9.v,
                          ),
                          child: Text(
                            "-SHORT (10X)",
                            style: CustomTextStyles.bodySmallOnPrimaryContainer,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 9.v,
                            bottom: 6.v,
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
                    Padding(
                      padding: EdgeInsets.only(left: 49.h),
                      child: RichText(
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
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  right: 15.h,
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
                    return ResultsItemWidget();
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
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          style:
                              CustomTextStyles.titleMediumOnSecondaryContainer,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 11.h,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "Binance",
                          style: CustomTextStyles.titleMediumAmberA700,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 5.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "(2min Ago)",
                          style: CustomTextStyles.labelLargeSemiBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: appTheme.blueGray10001,
              ),
              SizedBox(height: 8.v),
              Text(
                "Take-Profit target 2 / Profit: +16.14% / Period: 2h",
                style: CustomTextStyles.titleSmallPoppinsPrimary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
