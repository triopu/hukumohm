import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:catex/catex.dart';

import 'theory_controller.dart';

class TheoryView extends GetView<TheoryController> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hukum Ohm',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Arus listrik hanya mengalir dalam suatu rangkaian yang tertutup. Rangkaian tertutup adalah suatu rangkaian yang jalannya mulai dari satu titik, berkeliling dan akhirnya Kembali lagi ke titik tersebut. Kuat arus listrik disebabkan oleh adanya beda tegangan listrik (V) antara dua titik dalam rangkaian tertutup. Sesuai dengan perjanjian, arah kuat arus listrik mengalir adalah dari titik berpotensial tinggi ke titik berpotensial rendah. Pada sebuah rangkaian tertutup sederhana, terjadi hubungan antar variabel sebagai berikut ini:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(
                    'assets/rangkaian.png',
                    width: Get.width,
                  ),
                ),
                RichText(
                  textAlign: TextAlign.justify,
                  text: new TextSpan(
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: [
                      new TextSpan(
                        text: 'berlaku hukum ohm yang menyatakan bahwa ',
                        style: TextStyle(fontSize: 14),
                      ),
                      new TextSpan(
                        text:
                            '“Kuat arus dalam suatu rangkaian sebanding dengan tegangan pada ujung-ujung rangkaian dan berbanding terbalik dengan hambatan pada rangkaian.”',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Secara matematis dituliskan:',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'V = I x R',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20, fontStyle: FontStyle.italic),
                      ),
                      Text('(1)')
                    ],
                  ),
                ),
                Text(
                  'Dalam Bentuk grafik, hubungan kuat arus (I) dan tegangan (V) dapat digambarkan sebagai berikut:',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(
                    'assets/gradien.png',
                    height: 200,
                  ),
                ),
                Text(
                  'Dimana gradien/kemiringan grafik dinyatakan oleh',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DefaultTextStyle.merge(
                          child: CaTeX(r'm = \frac {∆I} {∆V}'),
                          style: TextStyle(
                              fontSize: 14, fontStyle: FontStyle.italic)),
                      Text('(2)')
                    ],
                  ),
                ),
                Text(
                  'sehingga',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DefaultTextStyle.merge(
                          child: CaTeX(r'R = \frac {1} {m}'),
                          style: TextStyle(
                              fontSize: 14, fontStyle: FontStyle.italic)),
                      Text('(3)')
                    ],
                  ),
                ),
                Text(
                  'Grafik tersebut menunjukkan bahwa pada hambatan tetap, jika nilai tegangan yang dipasang ditambah nilainya, maka kuat arus yang mengalir dalam rangkaian juga akan naik.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TheoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TheoryController>(
      () => TheoryController(),
    );
  }
}
