// ignore: implementation_imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:your_sooq/navigation/AppRoutes.dart';
import 'package:your_sooq/presentation/screens/mainlogin/MainLoginView.dart';

import 'SplashController.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: Center(
          child: Image.asset(controller.splashIcon.value),
        ),
      );
    });
  }

}
