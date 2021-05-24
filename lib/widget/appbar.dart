import 'package:flutter/material.dart';
import 'package:handpicked_shop/helper/colors.dart';

Widget buildAppBar(BuildContext context, {Widget title, List<Widget> actions}) {
  return AppBar(
      backgroundColor: transparentColor,
      elevation: 0,
      title: title,
      actions: actions);
}
