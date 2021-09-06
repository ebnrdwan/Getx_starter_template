import 'package:get/get.dart';
import 'package:your_sooq/data/repositories/countries/CountriesRepository.dart';
import 'package:your_sooq/data/repositories/countries/ICountriesRepository.dart';
import 'package:your_sooq/data/sources/countries/CountriesLocalDataSource.dart';
import 'package:your_sooq/data/sources/countries/CountriesRemoteDataSource.dart';
import 'package:your_sooq/data/sources/countries/ICountriesLocalDataSource.dart';
import 'package:your_sooq/data/sources/countries/ICountriesRemoteDataSource.dart';
import 'package:your_sooq/presentation/screens/countries/CountriesController.dart';


class CountriesBinding extends Bindings {
  @override
  void dependencies() {
    print("countries login binding");
    Get.lazyPut<ICountriesLocalDataSource>(() => CountriesLocalDataSource(), fenix: true);
    Get.lazyPut<ICountriesRemoteDataSource>(() => CountriesRemoteDataSource(Get.find()), fenix: true);
    Get.lazyPut<ICountriesRepository>(() => CountriesRepository(Get.find(), Get.find()), fenix: true);
    Get.lazyPut(() => CountriesController(Get.find()), fenix: true);
  }
}
