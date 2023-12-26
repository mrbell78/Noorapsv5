import 'package:get_it/get_it.dart';

import '../account/profile_repository.dart';
import '../home/home_repository.dart';
import '../http-service/http-service.dart';
import '../signal/signal_repository.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {

  locator.registerLazySingleton<HttpService>(() => HttpService());
  locator.registerLazySingleton<HomeRepository>(() => HomeRepository());
  locator.registerLazySingleton<ProfileRepository>(() => ProfileRepository());
 // locator.registerLazySingleton<RobotRepository>(() => RobotRepository());
  locator.registerLazySingleton<SignalRepository>(() => SignalRepository());


}