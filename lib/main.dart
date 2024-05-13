import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'views/home.dart';
import 'views/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => StartPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
