import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SimulationController extends GetxController {
  TextEditingController tegangan = new TextEditingController();
  TextEditingController hambatan = new TextEditingController();
  TextEditingController arus = new TextEditingController();

  hitungArus() {
    if (tegangan.text == '') {
      giveAlert('Masukkan Nilai Tegangan Terlebih Dahulu');
    } else if (hambatan.text == '') {
      giveAlert('Masukkan Nilai Hambatan Terlebih Dahulu');
    } else if (hambatan.text == '0' || tegangan.text == '0') {
      giveAlert('Tegangan atau Hambatan Tidak Boleh Bernilai 0');
    } else {
      try {
        var i = (double.parse(tegangan.text) / double.parse(hambatan.text));
        arus.text = i.toString().replaceAll('.', ',');
      } catch (e) {
        giveAlert(e.toString());
      }
    }
  }

  giveAlert(String text) {
    Get.defaultDialog(
        title: 'Peringatan',
        content: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  text ?? '',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 50,
                  width: 200,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text(
                            'Mengerti',
                            style: TextStyle(fontSize: 16),
                          ))),
                ),
              ],
            ),
          ),
        ),
        barrierDismissible: false);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
