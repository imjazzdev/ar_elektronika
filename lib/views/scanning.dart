import 'dart:typed_data';

import 'package:ar_elektronika/utils/var_global.dart';
import 'package:ar_elektronika/views/detail.dart';
import 'package:ar_elektronika/views/start.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanningPage extends StatefulWidget {
  const ScanningPage({super.key});

  @override
  State<ScanningPage> createState() => _ScanningPageState();
}

class _ScanningPageState extends State<ScanningPage> {
  bool isScanCompleted = false;

  void closeScreen() {
    isScanCompleted = false;
  }

  void onNavigate() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
            builder: (context) =>
                DetailPage(sourceImg3D: '${VarGlobal.value_path}')),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => StartPage(),
            ),
            (route) => false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StartPage(),
                      ),
                      (route) => false);
                },
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset(
                    'assets/close.png',
                    height: 20,
                  ),
                ))
          ],
        ),
        body: MobileScanner(onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;

          for (var barcode in barcodes) {
            VarGlobal.value_path = barcode.rawValue!;
          }

          // for (var i = 1; i < 10; i++) {
          //   print('ini $i');
          // }

          print('SCANNINGGGG');
          if (VarGlobal.value_path != '') {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        DetailPage(sourceImg3D: '${VarGlobal.value_path}')),
                (route) => false);
          }
        }),
      ),
    );
  }
}
