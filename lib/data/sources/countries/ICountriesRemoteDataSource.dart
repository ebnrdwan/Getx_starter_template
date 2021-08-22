import 'package:your_sooq/data/models/base/APIStatus.dart';
import 'package:your_sooq/data/models/base/BaseResponse.dart';
import 'package:your_sooq/data/models/countries/country_entity.dart';

abstract class ICountriesRemoteDataSource {
  Future<ApiStatus<CountryEntity>> getCountries();
}
