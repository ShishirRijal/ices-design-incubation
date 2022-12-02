import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ices_desgin_incubation/utils/font_manager.dart';

import '../../modles/apartment.dart';
import '../../widgets/apartment_card.dart';

final List<String> images = [
  "https://images.unsplash.com/photo-1576941089067-2de3c901e126?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=978&q=80",
  "https://images.unsplash.com/photo-1598228723793-52759bba239c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
  "https://images.unsplash.com/photo-1576941089067-2de3c901e126?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=978&q=80",
  "https://images.unsplash.com/photo-1582063289852-62e3ba2747f8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
];

class FindRoomScreen extends StatelessWidget {
  const FindRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Appbar(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  alignment: Alignment.center,
                  width: mediaQuery.width * 0.9,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextField(
                    cursorColor: Colors.white,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30.0,
                      ),
                      hintText: 'Search by location',
                      hintStyle: getRegularTextStyle(),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Nearby Rooms",
                    style: getMediumTextStyle(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    margin: const EdgeInsets.only(top: 5),
                    height: 2.5,
                    width: 100.0,
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              CarouselSlider(
                options: CarouselOptions(height: 300.0),
                items: [1, 2, 3].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Image.network(images[i], fit: BoxFit.cover));
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular", style: getRegularTextStyle()),
                    Text("Recommended",
                        style: getRegularTextStyle(color: Colors.grey)),
                    Text("Highest Rated",
                        style: getRegularTextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  var currentApartment = Apartments().apartments[index];
                  return Column(
                    children: [
                      const SizedBox(height: 20.0),
                      ApartmentCard(
                        id: currentApartment.id,
                        imageAddress: currentApartment.imageAddress,
                        city: currentApartment.city,
                        amount: currentApartment.amount,
                        address: currentApartment.address,
                        beds: currentApartment.beds,
                        baths: currentApartment.baths,
                        onClicked: () {},
                        length: Apartments().apartments.length,
                      ),
                    ],
                  );
                },
                itemCount: Apartments().apartments.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Appbar extends StatelessWidget {
  const Appbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.black12,
      height: 70.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu, size: 24, color: Colors.black),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Hello,\n",
                  style: getRegularTextStyle(color: Colors.black54),
                ),
                TextSpan(
                  text: "SHISHIR 👋",
                  style: getMediumTextStyle(),
                ),
              ],
            ),
          ),
          CircleAvatar(
            radius: 25.0,
            backgroundImage: AssetImage(
              "assets/images/avatar.jpg",
            ),
          ),
        ],
      ),
    );
  }
}
