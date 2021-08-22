import 'package:get/get.dart';
import 'package:your_sooq/data/models/base/UiState.dart';
import 'package:your_sooq/data/models/base/UiStateControllerMixin.dart';
import 'package:your_sooq/data/models/countries/country_entity.dart';
import 'package:your_sooq/data/repositories/countries/ICountriesRepository.dart';

class CountriesController extends GetxController with UiStateControllerMixin {
  final ICountriesRepository countriesRepository;

  CountriesController(this.countriesRepository);

  static CountriesController get get => Get.find();

  final Rx<UiState<CountryEntity>> countriesUiState = UiState<CountryEntity>.idle().obs;

  @override
  void onInit() {
    loadCountries();
    super.onInit();
  }

  Future<UiState<CountryEntity>> loadCountries() async {
    countriesUiState.value = UiState.loading();
    var countriesStatus = await countriesRepository.getCountries();
    var state = await mapToUiState<CountryEntity>(countriesStatus);
    countriesUiState.value = state;
    return state;
  }
}
