import 'package:get/get.dart';
import 'package:your_sooq/data/repositories/mainlogin/IMainLoginRepository.dart';
import 'package:your_sooq/data/repositories/mainlogin/MainLoginRepository.dart';
import 'package:your_sooq/data/sources/mainlogin/IMainLocalDataSource.dart';
import 'package:your_sooq/data/sources/mainlogin/IMainRemoteDataSource.dart';
import 'package:your_sooq/data/sources/mainlogin/MainLoginLocalDataSource.dart';
import 'package:your_sooq/data/sources/mainlogin/MainLoginRemoteDataSource.dart';
import 'package:your_sooq/presentation/screens/mainlogin/MainLoginController.dart';

class MainLoginBinding extends Bindings {
  @override
  void dependencies() {
    print("mian login binding");
    Get.lazyPut<IMainLoginLocalDataSource>(() => MainLoginLocalDataSource(), fenix: true);
    Get.lazyPut<IMainLoginRemoteDataSource>(() => MainLoginRemoteDataSource(Get.find()), fenix: true);
    Get.lazyPut<IMainLoginRepository>(() => MainLoginRepository(Get.find(), Get.find()), fenix: true);
    Get.lazyPut(() => MainLoginController(Get.find()), fenix: true);
  }
}
