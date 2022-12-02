import 'package:flutter/material.dart';
import 'package:ices_desgin_incubation/screens/rent_screen/repttex.dart';

class RentScreen extends StatefulWidget {
  const RentScreen({super.key});

  @override
  State<RentScreen> createState() => RentScreenState();
}

class RentScreenState extends State<RentScreen> {
  @override
  Widget build(BuildContext context) {
    bool val1 = false;
    bool val2 = false;
    bool val3 = true;

    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.all(0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://media.istockphoto.com/id/1158713117/photo/brown-two-story-all-american-home.jpg?s=612x612&w=0&k=20&c=PRsPVVX1JK8Dy0Aa_QQ46EKMO32G8QzK2x5nRjNlyhU="),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                  //add home romm details
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                            child: Row(
                          children: [
                            //filter option witj text
                            Text(
                              "Rent  ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            //filter icon
                            Icon(
                              Icons.sort,
                              size: 30,
                              color: Colors.black,
                            ),
                          ],
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exclusive for studnet",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),
                          ),
                        ]),

                    //textfield to add details
                  ]),
            ),
            textfield(
              "Number of room",
              "",
              "3",
            ),
            textfield(
              "Rent Price",
              "Rs",
              "4000",
            ),
            textfieldone(
              "Location",
              "",
              "Lamachaur",
            ),
            //switch to bathroom and kitchen
            Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bathroom",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              letterSpacing: 1.2),
                        ),
                        Switch(
                          value: val1,
                          onChanged: (value) {
                            setState(() {
                              val1 = !value;
                            });
                          },
                          activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kitchen",
                          style: TextStyle(
                            letterSpacing: 1.2,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Switch(
                          value: val2,
                          onChanged: (value) {
                            setState(() {
                              val2 = !value;
                            });
                          },
                          activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Internet",
                          style: TextStyle(
                            letterSpacing: 1.2,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(onTap: () {
                          setState(() {
val3=!val3;                            
                          });
                        },
                       child: Switch(
                          value: val3,
                          onChanged: (value) {
                           
                          },
                          activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,
                        ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //Rent button
                    GestureDetector(
                      onTap: //alert
                          () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Rent"),
                                content: Text("Rent Successfully"),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("OK"))
                                ],
                              );
                            });
                      },
                      child:
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Rent",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ),
                  ],
                ))
          ]))
        ],
      ),
    );
  }
}
