import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nurhossen_s_application5/account/profile_controller.dart';
import 'package:nurhossen_s_application5/presentation/log_in_one_screen/log_in_one_screen.dart';
import 'package:nurhossen_s_application5/presentation/log_in_screen/log_in_screen.dart';
import 'package:provider/provider.dart';

import '../home/home_controller.dart';
import '../presentation/verification_code_screen/verification_code_screen.dart';
import '../routes/app_routes.dart';
import 'bottom_navbar.dart';


class ChekAccess extends StatelessWidget {
  const ChekAccess({Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {

    Future<bool> checkConnection() async {
      bool connected = false;
      try {
        final result = await InternetAddress.lookup('google.com');
        if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
          connected = true;
        }
      } on SocketException catch (_) {
        connected = false;
      }
      return connected;
    }

    return Builder(
      builder: (BuildContext context) {
       Provider.of<HomeController>(context, listen: false).getUserIdMethod();
       Provider.of<HomeController>(context, listen: false).checkUserverification();
       Provider.of<HomeController>(context, listen: false).getGlobalSettings();
       //Provider.of<ProfileController>(context, listen: false).userLogout();
        return Consumer<HomeController>(
          builder: (_,provider,__){
            return FutureBuilder(
              future: checkConnection(),
              builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data!) {
                    print("the user id is ${provider.userid}");
                    print("user verification status  ${provider.userVerified}");
                    print("system status  ${provider.globalSeetings?.data?.maintenanceMode}");

                    return provider.userid.isEmpty?LogInScreen():
                    provider.userVerified==false?VerificationCodeScreen():BottomNavBar();

                    // if(provider.globalSeetings?.data?.maintenanceMode==false){
                    //   return provider.userid.isEmpty?LogInScreen():
                    //   provider.userVerified==false?VerificationCodeScreen():BottomNavBar();
                    // }else{
                    //   return const Scaffold(
                    //     body: Column(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       children: [
                    //         Center(child: Text("The System is on Maintenance Break ",style: TextStyle(fontSize: 18,),))
                    //       ],
                    //     ),
                    //   );
                    // }


                  } else {
                    return const Scaffold(
                      body: Center(
                        child: Text(
                          'No Internet Connection',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    );
                  }
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            );
          },

        );
      },
    );
    //return HomeWidget();
  }
}