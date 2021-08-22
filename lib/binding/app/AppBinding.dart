import 'package:get/get.dart';
import 'package:your_sooq/networking/DioClient.dart';
import 'package:your_sooq/networking/NetworkingService.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DioClient.instance, fenix: true);
    Get.lazyPut(() => NetworkingService(Get.find()), fenix: true);
  }
}
