import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:your_sooq/data/models/base/UiState.dart';
import 'package:your_sooq/data/models/base/UiStateViewMixin.dart';
import 'package:your_sooq/data/models/countries/country_entity.dart';

import 'CountriesController.dart';


class CountriesView extends GetView<CountriesController> with UiStateViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() {
          return handleUiState<CountryEntity>(controller.countriesUiState,onSuccessCountries);
        }),
      ),
    );
  }


  Widget onSuccessCountries(CountryEntity countryEntity) {
    return Text(countryEntity.data.first.name);
  }

}
