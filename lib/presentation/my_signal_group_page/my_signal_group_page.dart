import '../my_signal_group_page/widgets/userprofile_item_widget.dart';import 'package:flutter/material.dart';import 'package:nurhossen_s_application5/core/app_export.dart';import 'package:nurhossen_s_application5/widgets/custom_switch.dart';class MySignalGroupPage extends StatefulWidget {const MySignalGroupPage({Key? key}) : super(key: key);

@override MySignalGroupPageState createState() =>  MySignalGroupPageState();

 }

// ignore_for_file: must_be_immutable
class MySignalGroupPageState extends State<MySignalGroupPage> with  AutomaticKeepAliveClientMixin<MySignalGroupPage> {bool isSelectedSwitch = false;

@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillOnPrimary, child: Column(children: [SizedBox(height: 10.v), _buildAutoRow(context)])))); } 
/// Section Widget
Widget _buildAutoRow(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [Row(mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Auto", style: CustomTextStyles.titleSmallBlack900)), Container(height: 16.v, width: 42.h, margin: EdgeInsets.only(left: 7.h), child: Stack(alignment: Alignment.bottomLeft, children: [CustomSwitch(alignment: Alignment.center, value: isSelectedSwitch, onChange: (value) {isSelectedSwitch = value;}), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 3.h), child: Text("on", style: theme.textTheme.titleSmall)))]))]), Text("Your trade will open automatically", style: CustomTextStyles.bodySmallInter), SizedBox(height: 30.v), ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 20.v);}, itemCount: 3, itemBuilder: (context, index) {return UserprofileItemWidget(onTapLeave: () {onTapLeave(context);});})])); } 
/// Navigates to the signalGroupScreen when the action is triggered.
onTapLeave(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signalGroupScreen); } 
 }
