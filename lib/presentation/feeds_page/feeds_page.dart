import '../feeds_page/widgets/userprofile5_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FeedsPage extends StatefulWidget {
  const FeedsPage({Key? key})
      : super(
          key: key,
        );

  @override
  FeedsPageState createState() => FeedsPageState();
}

class FeedsPageState extends State<FeedsPage>
    with AutomaticKeepAliveClientMixin<FeedsPage> {
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
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 20.v,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return Userprofile5ItemWidget();
          },
        ),
      ),
    );
  }
}
