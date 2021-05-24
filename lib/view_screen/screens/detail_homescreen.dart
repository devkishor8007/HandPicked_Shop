import 'package:flutter/material.dart';
import 'package:handpicked_shop/model/handPicked_model.dart';
import 'package:handpicked_shop/widget/elevatedbutton.dart';
import 'package:handpicked_shop/widget/text.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailHandPickedScreen extends StatelessWidget {
  final PickedData pickedData;

  const DetailHandPickedScreen({Key key, this.pickedData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildStackImageIcon(context),
              buildImageDetailAndButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImageDetailAndButton(BuildContext context) {
    return Container(
      width: context.screenWidth,
      transform: Matrix4.translationValues(0, -26, 0),
      height: context.screenHeight * 0.4,
      decoration: BoxDecoration(
        color: Vx.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: context.screenHeight * 0.03,
            horizontal: context.screenWidth * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(pickedData.title,
                size: context.textTheme.headline5.fontSize,
                fontWeight: FontWeight.bold),
            9.heightBox,
            Row(
              children: [
                text("\$" + pickedData.price.toString(),
                    color: Vx.gray400,
                    size: context.textTheme.headline6.fontSize,
                    fontWeight: FontWeight.bold),
                12.widthBox,
                Icon(
                  Icons.star,
                  color: Vx.amber500,
                ),
                2.widthBox,
                text("4.9",
                    fontWeight: FontWeight.bold,
                    size: context.textTheme.headline6.fontSize,
                    color: Vx.gray300),
              ],
            ),
            15.heightBox,
            text(pickedData.siteName,
                fontWeight: FontWeight.bold,
                size: context.textTheme.headline6.fontSize,
                color: Vx.gray500),
            80.heightBox,
            buildElevatedButton(context),
          ],
        ),
      ),
    );
  }

  Widget buildStackImageIcon(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: context.screenHeight * 0.6,
            width: context.screenWidth,
            child: Hero(tag: "${pickedData.title}", child: pickedData.image)),
        Positioned(
          child: IconButton(
              icon: Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        )
      ],
    );
  }
}
