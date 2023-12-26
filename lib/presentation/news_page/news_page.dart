import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:readmore/readmore.dart';

// ignore_for_file: must_be_immutable
class NewsPage extends StatefulWidget {
  const NewsPage({Key? key})
      : super(
          key: key,
        );

  @override
  NewsPageState createState() => NewsPageState();
}

class NewsPageState extends State<NewsPage>
    with AutomaticKeepAliveClientMixin<NewsPage> {
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.h),
                child: Column(
                  children: [
                    SizedBox(
                      height: 583.v,
                      width: 353.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          _buildLineNineteenColumn(context),
                          _buildNewTradingColumn(context),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.v),
                    SizedBox(
                      width: 288.h,
                      child: ReadMoreText(
                        "Lorem Ipsum is  simply  dummy text    of    the   printing    and typesetting    industry.      Lorem the industry's standard  dummy  ",
                        trimLines: 4,
                        colorClickableText: appTheme.amberA700,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: "Read More...",
                        moreStyle: CustomTextStyles.bodyMediumLight.copyWith(
                          height: 1.43,
                        ),
                        lessStyle: CustomTextStyles.bodyMediumLight.copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Divider(
                      color: appTheme.blueGray100,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLineNineteenColumn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 178.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              color: appTheme.blueGray100,
            ),
            SizedBox(height: 146.v),
            Divider(
              color: appTheme.blueGray100,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNewTradingColumn(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle2,
                  height: 120.v,
                  width: 288.h,
                  radius: BorderRadius.circular(
                    7.h,
                  ),
                ),
                SizedBox(height: 12.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "New Trading 2023",
                    style: CustomTextStyles.titleMedium18,
                  ),
                ),
                SizedBox(height: 8.v),
                SizedBox(
                  width: 288.h,
                  child: ReadMoreText(
                    "Lorem Ipsum is  simply  dummy text    of    the   printing    and typesetting    industry.      Lorem the industry's standard  dummy  ",
                    trimLines: 4,
                    colorClickableText: appTheme.amberA700,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Read More...",
                    moreStyle: CustomTextStyles.bodyMediumLight.copyWith(
                      height: 1.43,
                    ),
                    lessStyle: CustomTextStyles.bodyMediumLight.copyWith(
                      height: 1.43,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 31.v),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New Trading 2023",
                  style: CustomTextStyles.titleMedium18,
                ),
                SizedBox(height: 8.v),
                SizedBox(
                  width: 288.h,
                  child: ReadMoreText(
                    "Lorem Ipsum is  simply  dummy text    of    the   printing    and typesetting    industry.      Lorem the industry's standard  dummy  ",
                    trimLines: 4,
                    colorClickableText: appTheme.amberA700,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Read More...",
                    moreStyle: CustomTextStyles.bodyMediumLight.copyWith(
                      height: 1.43,
                    ),
                    lessStyle: CustomTextStyles.bodyMediumLight.copyWith(
                      height: 1.43,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 28.v),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle2,
                  height: 120.v,
                  width: 288.h,
                  radius: BorderRadius.circular(
                    7.h,
                  ),
                ),
                SizedBox(height: 12.v),
                Text(
                  "New Trading 2023",
                  style: CustomTextStyles.titleMedium18,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
