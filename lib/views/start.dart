import 'package:ar_elektronika/views/scanning.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

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
                Text(
                  'APLIKASI PEMBELAJARAN\nKOMPONEN ELEKTRONIKA',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/logo.png',
                  height: 300,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/home');
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => HomePage1(),
                        //     ));
                      },
                      child: Image.asset(
                        'assets/button-start.png',
                        width: 130,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          SystemNavigator.pop();
                        },
                        child:
                            Image.asset('assets/button-exit.png', width: 130)),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                // InkWell(
                //   onTap: () {
                //     AwesomeDialog(
                //             context: context,
                //             dialogType: DialogType.info,
                //             animType: AnimType.rightSlide,
                //             title: 'PANDUAN DAN INFORMASI',
                //             btnOkOnPress: () {},
                //             btnOkText: 'Kembali',
                //             buttonsTextStyle: TextStyle(color: Colors.black),
                //             btnOkColor: Color.fromARGB(255, 126, 245, 229))
                //         .show();
                //   },
                //   child: Container(
                //     height: 55,
                //     width: 180,
                //     alignment: Alignment.center,
                //     decoration: BoxDecoration(
                //         color: Color.fromARGB(255, 126, 245, 229),
                //         borderRadius: BorderRadius.circular(10)),
                //     child: Text(
                //       'PANDUAN',
                //       style:
                //           TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                //     ),
                //   ),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
