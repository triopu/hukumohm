import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Image.asset(
            'assets/ic_hukum_ohm.png',
            height: 150,
          ),
        )),
      ),
    );
  }
}

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
