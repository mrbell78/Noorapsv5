import '../chaneel_page/widgets/userprofile6_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ChaneelPage extends StatefulWidget {
  const ChaneelPage({Key? key})
      : super(
          key: key,
        );

  @override
  ChaneelPageState createState() => ChaneelPageState();
}

class ChaneelPageState extends State<ChaneelPage>
    with AutomaticKeepAliveClientMixin<ChaneelPage> {
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
          return Userprofile6ItemWidget();
        },
      ),
    );
  }
}
