import 'package:flutter/material.dart';
import 'package:ices_desgin_incubation/screens/landing_screen/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: 'Poppins',
      ),
      home: const LandingScreen(),
    );
  }
}
