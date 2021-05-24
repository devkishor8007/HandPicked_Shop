import 'package:flutter/material.dart';
import 'package:handpicked_shop/helper/colors.dart';
import 'package:velocity_x/velocity_x.dart';

Widget buildTextField() {
  return TextField(
    decoration: InputDecoration(
      suffixIcon: IconButton(
        icon: Icon(
          Icons.search,
          size: 30,
        ),
        onPressed: () {
          print('shsh');
        },
      ),
      hintText: "What are you looking for?",
      hintStyle: TextStyle(color: greyColor),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: greyColor),
        borderRadius: BorderRadius.circular(20),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: greyColor),
        borderRadius: BorderRadius.circular(20),
      ),
      fillColor: Vx.gray200,
      filled: true,
    ),
  );
}
