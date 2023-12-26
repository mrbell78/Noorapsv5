import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class RowlistItemWidget extends StatelessWidget {
  const RowlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 42.adaptSize,
            width: 42.adaptSize,
            padding: EdgeInsets.all(9.h),
            decoration: IconButtonStyleHelper.fillAmberA,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrameOnprimary42x42,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 9.v,
              bottom: 8.v,
            ),
            child: Text(
              "Announcement",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Spacer(),
          Container(
            width: 30.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 6.v),
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.fillLightBlue.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder14,
            ),
            child: Text(
              "3",
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
