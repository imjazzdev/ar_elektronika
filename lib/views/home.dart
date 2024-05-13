import 'package:ar_elektronika/views/detail.dart';
import 'package:ar_elektronika/views/scanning.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ModelViewer(
      //   src: 'assets/transistor.GLB',
      //   autoRotate: true,
      //   backgroundColor: Colors.grey,
      //   ar: true,
      // ),
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          SizedBox(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Image.asset(
                'assets/background.jpg',
                fit: BoxFit.cover,
              )),
          SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuItem(
                      nama: 'Transistor',
                      gambar: 'assets/transistor.jpg',
                      srcImg3D: 'assets/3d-transistor.GLB',
                    ),
                    MenuItem(
                      nama: 'Dioda',
                      gambar: 'assets/dioda.jpg',
                      srcImg3D: 'assets/3d-dioda.GLB',
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuItem(
                      nama: 'Kapasitor',
                      gambar: 'assets/capacitor.jpg',
                      srcImg3D: 'assets/3d-capacitor.GLB',
                    ),
                    MenuItem(
                      nama: 'IC-Atmega328',
                      gambar: 'assets/ic-atmega328.jpg',
                      srcImg3D: 'assets/3d-icatmega328.GLB',
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                MenuItem(
                  nama: 'Induktor',
                  gambar: 'assets/induktor.jpg',
                  srcImg3D: 'assets/3d-induktor.GLB',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35, right: 20),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScanningPage(),
                      ));
                },
                icon: Icon(
                  Icons.camera_alt,
                  size: 35,
                )),
          )
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String nama, gambar, srcImg3D;
  MenuItem({required this.nama, required this.gambar, required this.srcImg3D});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(sourceImg3D: srcImg3D),
            ));
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
              height: 150,
              width: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 126, 245, 229),
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    gambar,
                    fit: BoxFit.cover,
                  ))),
          Container(
            height: 40,
            width: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10))),
            child: Text(
              nama,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
