import 'package:get/get.dart';
import 'package:your_sooq/data/repositories/splash/ISplashRepository.dart';
import 'package:your_sooq/data/repositories/splash/SplashRepository.dart';
import 'package:your_sooq/data/sources/splash/ISplashLocalDataSource.dart';
import 'package:your_sooq/data/sources/splash/ISplashRemoteDataSource.dart';
import 'package:your_sooq/data/sources/splash/SplashLocalDataSource.dart';
import 'package:your_sooq/data/sources/splash/SplashRemoteDataSource.dart';
import 'package:your_sooq/presentation/screens/splash/SplashController.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    print("splash binding");
    Get.lazyPut<ISplashLocalDataSource>(() => SplashLocalDataSource());
    Get.lazyPut<ISplashRemoteDataSource>(() => SplashRemoteDataSource(Get.find()));
    Get.lazyPut<ISplashRepository>(() => SplashRepository(Get.find(), Get.find()));
    Get.lazyPut(() => SplashController(Get.find()));
  }
}
