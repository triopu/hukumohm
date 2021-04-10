import 'dart:async';

import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 3), () => Get.offAllNamed('/home'));
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
