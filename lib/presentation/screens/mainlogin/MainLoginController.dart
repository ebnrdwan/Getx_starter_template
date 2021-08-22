import 'package:get/get.dart';
import 'package:your_sooq/data/repositories/mainlogin/IMainLoginRepository.dart';
import 'package:your_sooq/utils/ImagesConstants.dart';

class  MainLoginController extends GetxController with StateMixin<int> {
  final IMainLoginRepository mainLoginRepository;

  MainLoginController(this.mainLoginRepository);

  static MainLoginController get get => Get.find();

  final splashIcon = Images.SPLASH_ICON.obs;
  final countiesButtonText = "Fetch Countries";


}
