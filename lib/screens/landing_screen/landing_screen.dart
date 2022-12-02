import 'package:flutter/material.dart';
import 'package:ices_desgin_incubation/utils/font_manager.dart';

class Action {
  final String title;
  final String imageAddress;
  Action(this.title, this.imageAddress);
}

List<Action> _actions = [
  Action('Buy a home', "assets/images/country_home.jpg"),
  Action('Rent a home', "assets/images/mansion.jpg"),
];

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeroSection(),
              const SizedBox(height: 20.0),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "What are you upto?",
                          style: getSemiBoldTextStyle(
                              color: Colors.black.withOpacity(.8)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.only(top: 5.0),
                          height: 1.5,
                          width: 150.0,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const ImageStackedContainer(
                        title: 'Find yourself a room',
                        imageAddress:
                            "https://images.unsplash.com/photo-1568605114967-8130f3a36994?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                      ),
                      const SizedBox(height: 20.0),
                      const ImageStackedContainer(
                        title: 'Rent your room',
                        imageAddress:
                            "https://images.unsplash.com/photo-1568605114967-8130f3a36994?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                      ),
                      const SizedBox(height: 20.0),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageStackedContainer extends StatelessWidget {
  final String title;
  final String imageAddress;
  const ImageStackedContainer({
    Key? key,
    required this.title,
    required this.imageAddress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final mediaQuery = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          // margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 1),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          left: 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              imageAddress,
              height: 250,
              // width: 160,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          child: Center(
              child: Text(
            title,
            style: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontSize: 16.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          )),
        ),
      ],
    );
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40.0),
            height: 400.0,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  Colors.black45,
                  BlendMode.darken,
                ),
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=875&q=80",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: const Text("Find Your Dream Room",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  height: 1.2,
                  fontSize: 36.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ))),
        const Indicators(),
        const PageIndex(),
      ],
    );
  }
}

class Indicators extends StatelessWidget {
  const Indicators({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10.0,
      child: SizedBox(
        height: 30.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            _Indicator(color: Colors.white),
            SizedBox(width: 20.0),
            _Indicator(color: Colors.grey),
            SizedBox(width: 20.0),
            _Indicator(color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

class _Indicator extends StatelessWidget {
  const _Indicator({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 3,
      width: 40.0,
    );
  }
}

class PageIndex extends StatelessWidget {
  const PageIndex({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20.0,
      right: 20.0,
      child: Container(
        height: 30.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: Colors.black38,
          borderRadius: BorderRadius.circular(6.0),
        ),
        alignment: Alignment.center,
        child: const Text(
          "1/3",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
