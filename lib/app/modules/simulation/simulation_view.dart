import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'simulation_controller.dart';

class SimulationView extends GetView<SimulationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Image.asset(
                      'assets/rangkaian.png',
                      width: Get.width,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                            flex: 3,
                            child: Text(
                              'Tegangan (V): ',
                              style: TextStyle(fontSize: 20),
                            )),
                        Expanded(
                            flex: 3,
                            child: TextField(
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.number,
                              controller: controller.tegangan,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(80.0),
                                    ),
                                  ),
                                  focusedBorder: focusBorder,
                                  enabledBorder: outlineBorder,
                                  disabledBorder: outlineBorder,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 20),
                                  filled: true,
                                  fillColor: Colors.white70),
                            )),
                        Expanded(
                            flex: 1,
                            child: Text(
                              'Volt',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 20),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                            flex: 3,
                            child: Text(
                              'Hambatan (R): ',
                              style: TextStyle(fontSize: 20),
                            )),
                        Expanded(
                            flex: 3,
                            child: TextField(
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.number,
                              controller: controller.hambatan,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(80.0),
                                    ),
                                  ),
                                  focusedBorder: focusBorder,
                                  enabledBorder: outlineBorder,
                                  disabledBorder: outlineBorder,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 20),
                                  filled: true,
                                  fillColor: Colors.white70),
                            )),
                        Expanded(
                            flex: 1,
                            child: Text(
                              'Ω',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 20),
                            )),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      height: 50,
                      width: 200,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: ElevatedButton(
                              onPressed: () {
                                controller.hitungArus();
                              },
                              child: Text(
                                'Hitung',
                                style: TextStyle(fontSize: 16),
                              ))),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                            flex: 3,
                            child: Text(
                              'Arus (I): ',
                              style: TextStyle(fontSize: 20),
                            )),
                        Expanded(
                            flex: 3,
                            child: TextField(
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.number,
                              controller: controller.arus,
                              enabled: false,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(80.0),
                                    ),
                                  ),
                                  focusedBorder: focusBorder,
                                  enabledBorder: outlineBorder,
                                  disabledBorder: outlineBorder,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 20),
                                  filled: true,
                                  fillColor: Colors.white70),
                            )),
                        Expanded(
                            flex: 1,
                            child: Text(
                              'A',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 20),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  OutlineInputBorder outlineBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(
      const Radius.circular(80.0),
    ),
    borderSide: const BorderSide(color: Colors.grey, width: 1.0),
  );
  OutlineInputBorder focusBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(
      const Radius.circular(80.0),
    ),
    borderSide: const BorderSide(color: Colors.grey, width: 2.0),
  );
}

class SimulationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SimulationController>(
      () => SimulationController(),
    );
  }
}
