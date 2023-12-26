import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:nurhossen_s_application5/signal/signal_controller.dart';
import 'package:nurhossen_s_application5/theme/theme_helper.dart';
import 'package:nurhossen_s_application5/routes/app_routes.dart';
import 'package:nurhossen_s_application5/utils_prv/dialog/DialogCustom.dart';
import 'package:nurhossen_s_application5/utils_prv/pref.dart';
import 'package:provider/provider.dart';

import 'account/profile_controller.dart';
import 'core/utils/size_utils.dart';
import 'home/home_controller.dart';
import 'locator/locator.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await setupLocator();
  DialogCustom.configLoading();
  await Pref.init();
  //await Firebase.initializeApp();

  ///Please update theme as per your need if required.
 // ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeController()),
        ChangeNotifierProvider(create: (context) => ProfileController()),

        ChangeNotifierProvider(create: (context) => SignalController()),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            theme: theme,
            title: 'nurhossen_s_application5',
            debugShowCheckedModeBanner: false,
            initialRoute: AppRoutes.checkAccess,
            routes: AppRoutes.routes,
            builder: EasyLoading.init(),
          );
        },
      ),
    );
  }
}
