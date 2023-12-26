import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SignalDashboardPage extends StatefulWidget {
  const SignalDashboardPage({Key? key})
      : super(
          key: key,
        );

  @override
  SignalDashboardPageState createState() => SignalDashboardPageState();
}

class SignalDashboardPageState extends State<SignalDashboardPage>
    with AutomaticKeepAliveClientMixin<SignalDashboardPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      _buildAboutColumn(context),
                      SizedBox(height: 20.v),
                      _buildTotalMemberRow(
                        context,
                        userImage: ImageConstant.imgFrameAmberA70038x38,
                        totalMember: "Total Followers",
                      ),
                      SizedBox(height: 20.v),
                      _buildTotalMemberRow(
                        context,
                        userImage: ImageConstant.imgFrame38x38,
                        totalMember: "Total Member",
                      ),
                      SizedBox(height: 20.v),
                      _buildReplyRow(context),
                      SizedBox(height: 20.v),
                      _buildPollRow(context),
                      SizedBox(height: 20.v),
                      _buildViewRow(context),
                      SizedBox(height: 20.v),
                      _buildSearchRow(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAboutColumn(BuildContext context) {
    return Column(
      children: [
        _buildAboutRow(
          context,
          userImage: ImageConstant.imgFrameAmberA70042x42,
          subscriptionPanel: "About",
        ),
        SizedBox(height: 20.v),
        _buildAboutRow(
          context,
          userImage: ImageConstant.imgFrame42x42,
          subscriptionPanel: "Subscription Panel",
        ),
        SizedBox(height: 20.v),
        _buildAboutRow(
          context,
          userImage: ImageConstant.imgFrame4,
          subscriptionPanel: "Send Signal",
        ),
        SizedBox(height: 20.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 14.v,
          ),
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 34.adaptSize,
                width: 34.adaptSize,
                padding: EdgeInsets.all(4.h),
                decoration: AppDecoration.fillAmberA.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder17,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFrameOnprimary26x26,
                  height: 26.adaptSize,
                  width: 26.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 7.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "Running Signal",
                  style: CustomTextStyles.bodyLargeOnSecondaryContainer,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgArrowDownBlack900,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  top: 5.v,
                  right: 1.h,
                  bottom: 5.v,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.v),
        _buildAboutRow(
          context,
          userImage: ImageConstant.imgFrame5,
          subscriptionPanel: "Result",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildReplyRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgReply,
            height: 37.v,
            width: 33.h,
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 7.v,
              bottom: 6.v,
            ),
            child: Text(
              "News",
              style: CustomTextStyles.bodyLargeOnSecondaryContainer,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownBlack900,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              right: 1.h,
              bottom: 7.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPollRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 76.h,
            margin: EdgeInsets.only(top: 1.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup2043,
                  height: 37.v,
                  width: 33.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.v),
                  child: Text(
                    "Poll",
                    style: CustomTextStyles.bodyLargeOnSecondaryContainer,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownBlack900,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              right: 1.h,
              bottom: 7.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 1.v),
            padding: EdgeInsets.symmetric(
              horizontal: 2.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillAmberA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(2.h),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 5.adaptSize,
                        width: 5.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.amberA700,
                          borderRadius: BorderRadius.circular(
                            2.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 2.v,
                        width: 12.h,
                        margin: EdgeInsets.only(
                          left: 2.h,
                          right: 6.h,
                          bottom: 2.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.amberA700,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.v),
                Container(
                  height: 2.v,
                  width: 19.h,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 2.v,
                    width: 19.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(
                        1.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.v),
                Container(
                  height: 2.v,
                  width: 14.h,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                SizedBox(height: 2.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 2.v,
                    width: 14.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(
                        1.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4.v),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 9.v,
              bottom: 4.v,
            ),
            child: Text(
              "Group Chat",
              style: CustomTextStyles.bodyLargeOnSecondaryContainer,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownBlack900,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              right: 1.h,
              bottom: 7.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSearchAmberA700,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 4.v,
              bottom: 3.v,
            ),
            child: Text(
              "Create Channel",
              style: CustomTextStyles.bodyLargeOnSecondaryContainer,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownBlack900,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 1.h,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAboutRow(
    BuildContext context, {
    required String userImage,
    required String subscriptionPanel,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 42.adaptSize,
            width: 42.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 10.v,
              bottom: 7.v,
            ),
            child: Text(
              subscriptionPanel,
              style: CustomTextStyles.bodyLargeOnSecondaryContainer.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownBlack900,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 9.v,
              right: 5.h,
              bottom: 9.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTotalMemberRow(
    BuildContext context, {
    required String userImage,
    required String totalMember,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 38.adaptSize,
            width: 38.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 7.v,
              bottom: 6.v,
            ),
            child: Text(
              totalMember,
              style: CustomTextStyles.bodyLargeOnSecondaryContainer.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownBlack900,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              right: 3.h,
              bottom: 7.v,
            ),
          ),
        ],
      ),
    );
  }
}
