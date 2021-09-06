import 'package:your_sooq/data/models/base/APIStatus.dart';
import 'package:your_sooq/data/models/countries/country_entity.dart';

abstract class ICountriesRepository {
  Future<ApiStatus<CountryEntity>> getCountries();
}