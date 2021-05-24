import 'package:flutter/material.dart';

Widget text(String text, {Color color, FontWeight fontWeight, double size}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: fontWeight,
    ),
  );
}
