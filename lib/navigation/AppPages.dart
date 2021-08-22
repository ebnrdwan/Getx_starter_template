import 'package:get/get.dart';
import 'package:your_sooq/binding/splash/CountriesBinding.dart';
import 'package:your_sooq/binding/splash/MainLoginBinding.dart';
import 'package:your_sooq/binding/splash/SplashBinding.dart';
import 'package:your_sooq/presentation/screens/countries/CountriesView.dart';
import 'package:your_sooq/presentation/screens/mainlogin/MainLoginView.dart';
import 'package:your_sooq/presentation/screens/splash/SplashView.dart';

import 'AppRoutes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.MAIN_LOGIN,
      page: () => MainLoginView(),
      binding: MainLoginBinding(),
    ),
    GetPage(
      name: Routes.COUNTRIES_LOOKUP,
      page: () => CountriesView(),
      binding: CountriesBinding(),
    )
  ];
}
