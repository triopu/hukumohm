import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 200,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/theory');
                    },
                    child: Text(
                      'Materi',
                      style: TextStyle(fontSize: 16),
                    ))),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 50,
            width: 200,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      Get.toNamed('/simulation');
                    },
                    child: Text(
                      'Simulasi',
                      style: TextStyle(fontSize: 16),
                    ))),
          )
        ],
      )),
    );
  }
}

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
