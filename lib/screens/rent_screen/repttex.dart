import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textfield(
  tittle,
  hnttxt,
  lbltxt,
) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        tittle,
        style: TextStyle(
          fontSize: 20,
          letterSpacing: 1.2,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      SizedBox(
        height: 8,
      ),
      TextField(
        decoration: InputDecoration(
          fillColor: Colors.grey[200],
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: hnttxt,
          labelText: lbltxt,
          labelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            // color: Colors.grey,
          ),
        ),
      ),
    ]),
  );
}

Widget textfieldone(
  tittle,
  hnttxt,
  lbltxt,
) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        tittle,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
          color: Colors.black,
        ),
      ),
      SizedBox(
        height: 8,
      ),
      TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.location_on),
          fillColor: Colors.grey[200],
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: hnttxt,
          labelText: lbltxt,
          labelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            // color: Colors.grey,
          ),
        ),
      ),
    ]),
  );
}
