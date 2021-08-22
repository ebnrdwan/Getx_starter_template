import 'dart:async';

import 'package:get/get.dart';
import 'package:your_sooq/data/repositories/splash/ISplashRepository.dart';
import 'package:your_sooq/navigation/AppRoutes.dart';
import 'package:your_sooq/utils/ImagesConstants.dart';

class SplashController extends GetxController with StateMixin<int> {
  final ISplashRepository splashRepository;

  SplashController(this.splashRepository);

  static SplashController get get => Get.find();
  final splashIcon = Images.SPLASH_ICON.obs;
  final counter = 2.obs;

  @override
  void onInit() {
    super.onInit();
    startCountDown();
  }

  late Timer timer;

  void startCountDown() {
    timer = Timer.periodic(Duration(seconds: 2), (timer) {
      decrement();
    });
  }

  void decrement() {
    if (counter.value > 0)
      counter.value--;
    else {
      timer.cancel();
      Get.rootDelegate.toNamed(Routes.MAIN_LOGIN) ;
    }
  }
}
