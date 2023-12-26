
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nurhossen_s_application5/core/app_export.dart';
import 'package:nurhossen_s_application5/presentation/home_screen/home_screen.dart';
import 'package:provider/provider.dart';

import '../home/home_controller.dart';



class BottomNavBar extends StatefulWidget {

   BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  @override
  void initState() {
    // TODO: implement initState
    // Provider.of<HomeController>(context, listen: false).getUserIdMethod();
    // Provider.of<HomeController>(context, listen: false).checkUserverification();
    // Provider.of<HomeController>(context, listen: false).getGlobalSettings();
    super.initState();
  }
    int currentIndex=0;




  List<Widget> screens = [
    HomeScreen(),
    Center(child: Text("Feeds Coming Soon ",style: TextStyle(color: Colors.green,fontSize: 24,fontWeight: FontWeight.bold),)),
    Center(child: Text("Market Info Coming Soon ",style: TextStyle(color: Colors.green,fontSize: 24,fontWeight: FontWeight.bold),)),
    Center(child: Text("Notification Coming Soon ",style: TextStyle(color: Colors.green,fontSize: 24,fontWeight: FontWeight.bold),)),
    Center(child: Text(" Account Coming Soon ",style: TextStyle(color: Colors.green,fontSize: 24,fontWeight: FontWeight.bold),)),
  ];

  @override
  Widget build(BuildContext context) {
    // return BottomAppBar(
    //   color: Colors.white,
    //   elevation: 25,
    //   shape: const CircularNotchedRectangle(),
    //   notchMargin: 8.0,
    //   child: SizedBox(
    //     height: 60.0,
    //     width: double.infinity,
    //     child: Row(
    //       mainAxisSize: MainAxisSize.max,
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: [
    //         IconButton(
    //           icon: Image.asset(
    //             "assets/icons/home.png",
    //             color: currentIndex == 0
    //                 ? Color(0xFF3AD8CA)
    //                 : Color(0xFF3AA9D8).withOpacity(.5),
    //           ),
    //           onPressed: () => NavUtils.push(context, HomeScreen()),
    //         ),
    //         IconButton(
    //           icon: Image.asset(
    //             "assets/icons/news.png",
    //             color: currentIndex == 1
    //                 ? Color(0xFF3AD8CA)
    //                 : Color(0xFF3AA9D8).withOpacity(.5),
    //             height: 24,
    //           ),
    //           onPressed: () {
    //            // Get.offNamed(NewsScreen.routeName);
    //             NavUtils.push(context, NewsScreen());
    //           },
    //         ),
    //         const SizedBox(
    //           width: 50,
    //         ),
    //         IconButton(
    //           icon: Image.asset(
    //             "assets/icons/notice-nav.png",
    //             color: currentIndex == 2
    //                 ? Color(0xFF3AD8CA)
    //                 : Color(0xFF3AA9D8).withOpacity(.5),
    //             height: 24,
    //           ),
    //           //onPressed: () => Get.offNamed(NoticeScreen.routeName),
    //           onPressed: (){
    //             NavUtils.push(context, NoticeScreen());
    //           },
    //         ),
    //         IconButton(
    //           icon: Image.asset(
    //             "assets/icons/settings.png",
    //             color: currentIndex == 3
    //                 ? Color(0xFF3AD8CA)
    //                 : Color(0xFF3AA9D8).withOpacity(.5),
    //             height: 24,
    //           ),
    //           //onPressed: () => Get.offNamed(AccountScreen.routeName),
    //           onPressed: (){
    //             NavUtils.push(context, AccountScreen());
    //           },
    //         ),
    //       ],
    //     ),
    //   ),
    //
    // );

    return Consumer<HomeController>(
      builder: (BuildContext context, provider, Widget? child) {
        return Scaffold(
          body: screens[currentIndex],
          bottomNavigationBar: Container(
            //padding: EdgeInsets.all(8),
            padding: EdgeInsets.only(top: 15,left: 10,right: 10),
            decoration: BoxDecoration(
                color: Colors.black,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12))
            ),
            child: GNav(

                gap: 8,
                iconSize: 25,
               // backgroundColor: Colors.black,
             //   tabActiveBorder: Border.all(color: Colors.red,width: 1),
                activeColor: appTheme.amberA700,

                color: Colors.white,
                tabBackgroundColor: Colors.grey.shade800,


                onTabChange: (index){
                  setState(() {
                    currentIndex=index;
                  });
                },
                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                tabs: [
                  GButton(icon: Icons.home,text: "Home"),
                  GButton(icon: Icons.feed_sharp,text: "Feeds",),
                  GButton(icon: Icons.bar_chart,text: "Market",),
                  GButton(icon: Icons.notifications,text: "Notice",),
                  GButton(icon: Icons.person,text: "Account"),
                ]),
          ),
        );
      },

    );
  }
}