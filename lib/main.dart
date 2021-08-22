import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_sooq/binding/app/AppBinding.dart';
import 'package:your_sooq/localization/Localization_service.dart';
import 'package:your_sooq/navigation/AppPages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      initialBinding: AppBinding(),
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      enableLog: true,
      smartManagement: SmartManagement.keepFactory,
      getPages: AppPages.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
