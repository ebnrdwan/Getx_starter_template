// ignore: implementation_imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:your_sooq/navigation/AppRoutes.dart';

import 'MainLoginController.dart';

class MainLoginView extends GetView<MainLoginController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(controller.splashIcon.value),
              ElevatedButton(
                  onPressed: () {
                    Get.rootDelegate.toNamed(Routes.COUNTRIES_LOOKUP);
                  }, child: Text(controller.countiesButtonText))
            ],
          ),
        ),
      );
    });
  }
}
