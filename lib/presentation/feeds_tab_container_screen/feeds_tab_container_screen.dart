import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/presentation/feeds_page/feeds_page.dart';
import 'package:nurhossen_s_application5/presentation/set_order_with_single_page/set_order_with_single_page.dart';
import 'package:nurhossen_s_application5/widgets/custom_bottom_bar.dart';

class FeedsTabContainerScreen extends StatefulWidget {
  const FeedsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FeedsTabContainerScreenState createState() => FeedsTabContainerScreenState();
}

class FeedsTabContainerScreenState extends State<FeedsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFeedsStack(context),
              Expanded(
                child: SizedBox(
                  height: 678.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      FeedsPage(),
                      FeedsPage(),
                      FeedsPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFeedsStack(BuildContext context) {
    return SizedBox(
      height: 73.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 46.h),
              decoration: AppDecoration.outlineBlack9004,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 69.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle142,
                    height: 4.v,
                    width: 40.h,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50.v,
            width: 320.h,
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              tabs: [
                Tab(
                  child: SizedBox(
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrameOnprimary,
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          alignment: Alignment.topCenter,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Feeds",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSearch,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                      ),
                      Text(
                        "Channel",
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrameOnprimary30x30,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                      ),
                      Text(
                        "Following",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Group6:
        return AppRoutes.setOrderWithSinglePage;
      case BottomBarEnum.Frameonprimary:
        return "/";
      case BottomBarEnum.User:
        return "/";
      case BottomBarEnum.Group1101:
        return "/";
      case BottomBarEnum.Group9:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.setOrderWithSinglePage:
        return SetOrderWithSinglePage();
      default:
        return DefaultWidget();
    }
  }
}
