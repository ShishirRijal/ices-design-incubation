import 'package:flutter/material.dart';
import 'package:ices_desgin_incubation/screens/landing_screen/landing_screen.dart';
import 'package:ices_desgin_incubation/screens/rent_screen/rent_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RentScreen(),
    );
  }
}

//https://media.istockphoto.com/id/1158713117/photo/brown-two-story-all-american-home.jpg?s=612x612&w=0&k=20&c=PRsPVVX1JK8Dy0Aa_QQ46EKMO32G8QzK2x5nRjNlyhU=