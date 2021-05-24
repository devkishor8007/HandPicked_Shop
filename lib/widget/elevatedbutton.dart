import 'package:flutter/material.dart';
import 'package:handpicked_shop/helper/colors.dart';
import 'package:handpicked_shop/widget/text.dart';
import 'package:velocity_x/velocity_x.dart';

Widget buildElevatedButton(BuildContext context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      primary: pinkAccentColor,
      minimumSize:
          Size(context.screenWidth * 0.99, context.screenHeight * 0.06),
    ),
    onPressed: () {},
    child: text('Add to Cart', size: context.textTheme.headline6.fontSize),
  );
}
