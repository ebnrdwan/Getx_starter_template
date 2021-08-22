import 'package:your_sooq/data/models/base/APIStatus.dart';
import 'package:your_sooq/data/models/countries/country_entity.dart';
import 'package:your_sooq/data/sources/base/BaseRemoteDataSource.dart';
import 'package:your_sooq/networking/NetworkingService.dart';

import 'ICountriesRemoteDataSource.dart';

class CountriesRemoteDataSource extends BaseRemoteDataSource implements ICountriesRemoteDataSource {
  final NetworkingService networkingService;

  CountriesRemoteDataSource(this.networkingService);

  @override
  Future<ApiStatus<CountryEntity>> getCountries() async {
    var response = await networkingService.fetchUserConfig();
    return parseResponseToStatus<CountryEntity>(response, () => CountryEntity.fromJson(response.data));
  }
}
