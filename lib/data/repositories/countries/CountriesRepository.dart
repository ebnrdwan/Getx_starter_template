import 'package:your_sooq/data/models/base/APIStatus.dart';
import 'package:your_sooq/data/models/countries/country_entity.dart';
import 'package:your_sooq/data/repositories/base/BaseRepository.dart';
import 'package:your_sooq/data/sources/countries/ICountriesLocalDataSource.dart';
import 'package:your_sooq/data/sources/countries/ICountriesRemoteDataSource.dart';

import 'ICountriesRepository.dart';

class CountriesRepository extends BaseRepository implements ICountriesRepository {
  final ICountriesRemoteDataSource countriesRemoteDataSource;
  final ICountriesLocalDataSource countriesLocalDataSource;

  CountriesRepository(this.countriesRemoteDataSource, this.countriesLocalDataSource);

  @override
  Future<ApiStatus<CountryEntity>> getCountries() {
    return countriesRemoteDataSource.getCountries();
  }
}
