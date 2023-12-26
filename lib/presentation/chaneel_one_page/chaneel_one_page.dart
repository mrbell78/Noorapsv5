import '../chaneel_one_page/widgets/userprofile7_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ChaneelOnePage extends StatefulWidget {
  const ChaneelOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  ChaneelOnePageState createState() => ChaneelOnePageState();
}

class ChaneelOnePageState extends State<ChaneelOnePage>
    with AutomaticKeepAliveClientMixin<ChaneelOnePage> {
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
              SizedBox(height: 19.v),
              _buildUserProfile(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 20.v,
          );
        },
        itemCount: 6,
        itemBuilder: (context, index) {
          return Userprofile7ItemWidget();
        },
      ),
    );
  }
}
