import 'package:flutter/material.dart';
import 'package:ices_desgin_incubation/modles/apartment.dart';
import 'package:ices_desgin_incubation/screens/detail_screen/detail_screen.dart';

import 'screens/find_room_screen/find_room_screen.dart';
import 'screens/landing_screen/landing_screen.dart';

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
      home: LandingScreen(),
    );
  }
}
