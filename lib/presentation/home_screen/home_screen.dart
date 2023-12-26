import 'package:expandable/expandable.dart';

import '../home_screen/widgets/drenderingbi_item_widget.dart';
import '../home_screen/widgets/signal_item_widget.dart';
import '../home_screen/widgets/userprofile1_item_widget.dart';
import '../home_screen/widgets/userprofile2_item_widget.dart';
import '../home_screen/widgets/userprofile3_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/presentation/set_order_with_single_page/set_order_with_single_page.dart';
import 'package:nurhossen_s_application5/widgets/custom_bottom_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Items{

  String headerText;
  String expandedText;
  bool  isExpanded=false;

  Items({required this.headerText, required this.expandedText, required this.isExpanded});
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Items> data = List<Items>.generate(5, (index) => Items(headerText: "How tis app works ?", expandedText: "its a tradings apps $index",isExpanded: false));

  int sliderIndex = 1;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 18.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        Container(

                            child: _buildDRenderingBiSection(context)),
                        SizedBox(height: 18.v),
                        _buildServicesSection(context),
                        SizedBox(height: 19.v),
                        _buildJoinSection(context),
                        SizedBox(height: 20.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              "FAQ",
                              style: CustomTextStyles.headlineSmallSemiBold,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.v),
                        _buildHowThisAppWorksSection(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
       // bottomNavigationBar: _buildBottomBarSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildDRenderingBiSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 13.h),
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: 130.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (
                  index,
                  reason,
                ) {
                  sliderIndex = index;
                },
              ),
              itemCount: 1,
              itemBuilder: (context, index, realIndex) {
                return DrenderingbiItemWidget();
              },
            ),
          ),
          SizedBox(height: 10.v),
          Container(
            height: 11.v,
            margin: EdgeInsets.only(left: 135.h),
            child: AnimatedSmoothIndicator(
              activeIndex: sliderIndex,
              count: 1,
              axisDirection: Axis.horizontal,
              effect: ScrollingDotsEffect(
                spacing: 8,
                activeDotColor: appTheme.amberA700,
                dotColor: appTheme.blueGray100,
                dotHeight: 8.v,
                dotWidth: 8.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildServicesSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Services",
            style: CustomTextStyles.headlineSmallSemiBold,
          ),
          SizedBox(height: 11.v),
          SizedBox(
            height: 115.v,
            child: ListView(
              padding: EdgeInsets.only(
                left: 15.h,
                right: 15.h,
              ),
              scrollDirection: Axis.horizontal,
              children: [
                SignalItemWidget(moduleName: "Signal",moudleImage: ImageConstant.img_signal),
                SizedBox(width:15.v,),
                SignalItemWidget(moduleName: "API",moudleImage: ImageConstant.imgApi),
                SizedBox(width: 15.v,),
                SignalItemWidget(moduleName: "DashBoard",moudleImage: ImageConstant.imgDashboard),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJoinSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 7.h),
          child: Text(
            "Traders leaderboard",
            style: CustomTextStyles.headlineSmallSemiBold,
          ),
        ),
        SizedBox(height: 10.v),
        SizedBox(
          height: 185.v,
          child: ListView(
            padding: EdgeInsets.only(left: 7.h),
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                child: Userprofile1ItemWidget(),
                margin: EdgeInsets.only(bottom: 5),
                padding: EdgeInsets.all(4),
              ),
              SizedBox(width: 15,),
              Container(
                child: Userprofile1ItemWidget(),
                margin: EdgeInsets.only(bottom: 5),
                padding: EdgeInsets.all(4),
              ),
              SizedBox(width: 15,),
              Container(
                child: Userprofile1ItemWidget(),
                margin: EdgeInsets.only(bottom: 5),
                padding: EdgeInsets.all(4),
              ),

              SizedBox(width: 15,),
              Container(
                child: Userprofile1ItemWidget(),
                margin: EdgeInsets.only(bottom: 5),
                padding: EdgeInsets.all(4),
              ),

              SizedBox(width: 15,),
              Container(
                child: Userprofile1ItemWidget(),
                margin: EdgeInsets.only(bottom: 5),
                padding: EdgeInsets.all(4),
              ),
            ],

          ),
        ),


        // SizedBox(height: 10.v),
        // Container(
        //   height: 36.v,
        //   width: 213.h,
        //   margin: EdgeInsets.only(left: 7.h),
        // ),
        // SizedBox(height: 10.v),
        // SizedBox(
        //   height: 128.v,
        //   child: ListView.separated(
        //     padding: EdgeInsets.only(left: 7.h),
        //     scrollDirection: Axis.horizontal,
        //     separatorBuilder: (
        //       context,
        //       index,
        //     ) {
        //       return SizedBox(
        //         width: 18.h,
        //       );
        //     },
        //     itemCount: 3,
        //     itemBuilder: (context, index) {
        //       return Userprofile2ItemWidget();
        //     },
        //   ),
        // ),
        SizedBox(height: 19.v),
        Padding(
          padding: EdgeInsets.only(left: 7.h),
          child: Text(
            "Channels",
            style: CustomTextStyles.headlineSmallSemiBold,
          ),
        ),
        SizedBox(height: 10.v),
        SizedBox(
          height: 185.v,
          child: ListView.separated(
            padding: EdgeInsets.only(left: 7.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 10.h,
              );
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.only(bottom: 5),
                  padding: EdgeInsets.all(4),
                  child: Userprofile3ItemWidget());
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  // Widget _buildHowThisAppWorksSection(BuildContext context) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //
  //       Padding(
  //         padding: EdgeInsets.only(
  //           left: 5.h,
  //           right: 17.h,
  //         ),
  //         child: _buildHowToJoinSignalSection(
  //           context,
  //           howToJoinSignalText: "How this app works?",
  //         ),
  //       ),
  //       SizedBox(height: 3.v),
  //       Padding(
  //         padding: EdgeInsets.only(right: 17.h),
  //         child: Column(
  //           children: [
  //             Divider(
  //               color: appTheme.blueGray100,
  //             ),
  //             SizedBox(height: 6.v),
  //             Padding(
  //               padding: EdgeInsets.only(left: 7.h),
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Text(
  //                     "What is signal?",
  //                     style: CustomTextStyles.titleLargeOnSecondaryContainer,
  //                   ),
  //                   CustomImageView(
  //                     imagePath: ImageConstant.imgArrowDownBlack900,
  //                     height: 24.adaptSize,
  //                     width: 24.adaptSize,
  //                     margin: EdgeInsets.only(
  //                       left: 176.h,
  //                       bottom: 5.v,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             SizedBox(height: 2.v),
  //             Divider(
  //               color: appTheme.blueGray100,
  //             ),
  //           ],
  //         ),
  //       ),
  //       SizedBox(height: 6.v),
  //       Padding(
  //         padding: EdgeInsets.only(
  //           left: 5.h,
  //           right: 17.h,
  //         ),
  //         child: _buildHowToJoinSignalSection(
  //           context,
  //           howToJoinSignalText: "How to join signal group?",
  //         ),
  //       ),
  //       SizedBox(height: 2.v),
  //       SizedBox(
  //         height: 56.v,
  //         width: 360.h,
  //         child: Stack(
  //           alignment: Alignment.topCenter,
  //           children: [
  //             CustomImageView(
  //               imagePath: ImageConstant.imgClose,
  //               height: 49.adaptSize,
  //               width: 49.adaptSize,
  //               alignment: Alignment.bottomRight,
  //             ),
  //             Align(
  //               alignment: Alignment.topCenter,
  //               child: Column(
  //                 mainAxisSize: MainAxisSize.min,
  //                 children: [
  //                   Divider(
  //                     color: appTheme.blueGray100,
  //                   ),
  //                   SizedBox(height: 3.v),
  //                   Padding(
  //                     padding: EdgeInsets.only(left: 7.h),
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                         Padding(
  //                           padding: EdgeInsets.only(bottom: 3.v),
  //                           child: Text(
  //                             "Who can create a channel?",
  //                             style: CustomTextStyles
  //                                 .titleLargeOnSecondaryContainer,
  //                           ),
  //                         ),
  //                         Container(
  //                           height: 30.v,
  //                           width: 42.h,
  //                           margin: EdgeInsets.only(
  //                             left: 34.h,
  //                             top: 3.v,
  //                           ),
  //                           child: Stack(
  //                             alignment: Alignment.topRight,
  //                             children: [
  //                               Align(
  //                                 alignment: Alignment.bottomLeft,
  //                                 child: Text(
  //                                   "Chats",
  //                                   style: CustomTextStyles.bodySmallOnPrimary,
  //                                 ),
  //                               ),
  //                               CustomImageView(
  //                                 imagePath: ImageConstant.imgArrowDownBlack900,
  //                                 height: 24.adaptSize,
  //                                 width: 24.adaptSize,
  //                                 alignment: Alignment.topRight,
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                   SizedBox(height: 1.v),
  //                   Divider(
  //                     color: appTheme.blueGray100,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget _buildHowThisAppWorksSection(BuildContext context){
    return SingleChildScrollView(
      child:ExpansionPanelList(
        expansionCallback: (int index,bool isExpanded){
         setState(() {
           data[index].isExpanded = isExpanded;
         });
        },
        children: data.map<ExpansionPanel>((Items item) {

          return ExpansionPanel(
            headerBuilder: (context,isExpanded){

            return ListTile(
              title: Text(item.headerText,style: TextStyle(color: Color(0xff000139),fontSize: 20,fontWeight: FontWeight.w500),),
            );
          },
              body: ListTile(
                title: Text("this is demo instruction , api not implemented yet. \n hope it will implement soon as long as mhabubvai \n give it to me. so plz hold tight",style: TextStyle(color: Color(0xff000139),fontSize: 14,fontWeight: FontWeight.w300),
                ),
          ),
            isExpanded: item.isExpanded
          );
        }).toList(),

      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildHowToJoinSignalSection(
    BuildContext context, {
    required String howToJoinSignalText,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          howToJoinSignalText,
          style: CustomTextStyles.titleLargeOnSecondaryContainer.copyWith(
            color: theme.colorScheme.onSecondaryContainer,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowDownBlack900,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 77.h,
            bottom: 5.v,
          ),
        ),
      ],
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
