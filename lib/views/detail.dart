import 'package:ar_elektronika/views/start.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

import '../utils/var_global.dart';

class DetailPage extends StatelessWidget {
  final String sourceImg3D;
  const DetailPage({super.key, required this.sourceImg3D});

  @override
  Widget build(BuildContext context) {
    VarGlobal.value_path = '';
    print('SOURCE 3D : $sourceImg3D');
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
        body: Stack(
          alignment: Alignment.topRight,
          children: [
            ModelViewer(
              src: sourceImg3D,
              ar: true,
              // arScale: ArScale.fixed,
              // cameraOrbit: '15deg 90deg -110m',

              autoRotate: true,
              backgroundColor: Colors.grey.shade700,
            ),
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
                  padding: const EdgeInsets.only(top: 40, right: 15),
                  child: Image.asset(
                    'assets/close.png',
                    height: 30,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
