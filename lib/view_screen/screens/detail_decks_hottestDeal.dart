import 'package:flutter/material.dart';
import 'package:handpicked_shop/widget/elevatedbutton.dart';
import 'package:handpicked_shop/widget/text.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:handpicked_shop/model/hotestDeal.dart';

class DetailDecksHottestDeal extends StatelessWidget {
  final HottestDealModel hottestDealModel;

  const DetailDecksHottestDeal({Key key, this.hottestDealModel})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  buildImage(context),
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
              ),
              buildImageDetailInformationButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(BuildContext context) {
    return Container(
        height: context.screenHeight * 0.6,
        width: context.screenWidth,
        child: Hero(
            tag: "${hottestDealModel.title}", child: hottestDealModel.image));
  }

  Widget buildImageDetailInformationButton(BuildContext context) {
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
            text(hottestDealModel.title,
                size: context.textTheme.headline5.fontSize,
                fontWeight: FontWeight.bold),
            9.heightBox,
            Row(
              children: [
                text("\$" + hottestDealModel.price.toString(),
                    color: Vx.gray400,
                    size: context.textTheme.headline6.fontSize,
                    fontWeight: FontWeight.bold),
                19.widthBox,
                text(hottestDealModel.discountPer,
                    fontWeight: FontWeight.bold,
                    size: context.textTheme.headline6.fontSize,
                    color: Vx.gray300),
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
            35.heightBox,
            Row(
              children: [
                buildOutlinedGenerated(context, name: "-"),
                9.widthBox,
                buildOutlinedGenerated(context, name: "1"),
                9.widthBox,
                buildOutlinedGenerated(context, name: "+"),
              ],
            ),
            80.heightBox,
            buildElevatedButton(context),
          ],
        ),
      ),
    );
  }

  Widget buildOutlinedGenerated(BuildContext context, {String name}) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 8.0,
          minimumSize:
              Size(context.screenWidth * 0.13, context.screenHeight * 0.06),
          backgroundColor: Vx.gray300),
      onPressed: () {},
      child: text(name, color: Vx.black),
    );
  }
}
