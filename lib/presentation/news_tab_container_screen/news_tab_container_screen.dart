import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/presentation/news_page/news_page.dart';
import 'package:nurhossen_s_application5/presentation/set_order_with_single_page/set_order_with_single_page.dart';
import 'package:nurhossen_s_application5/widgets/custom_bottom_bar.dart';

class NewsTabContainerScreen extends StatefulWidget {
  const NewsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NewsTabContainerScreenState createState() => NewsTabContainerScreenState();
}

class NewsTabContainerScreenState extends State<NewsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTwentyOneTabView(context),
              SizedBox(
                height: 678.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    NewsPage(),
                    NewsPage(),
                    NewsPage(),
                    NewsPage(),
                    NewsPage(),
                    NewsPage(),
                  ],
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
  Widget _buildTwentyOneTabView(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.outlineBlack9004,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 26.v),
          Container(
            height: 47.v,
            width: 374.h,
            child: TabBar(
              controller: tabviewController,
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    "Signals",
                  ),
                ),
                Tab(
                  child: Text(
                    "Orders",
                  ),
                ),
                Tab(
                  child: Text(
                    "Results",
                  ),
                ),
                Tab(
                  child: Text(
                    "News",
                  ),
                ),
                Tab(
                  child: Text(
                    "Poll",
                  ),
                ),
                Tab(
                  child: Text(
                    "Chat",
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
