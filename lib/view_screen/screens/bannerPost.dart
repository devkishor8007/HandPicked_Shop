import 'package:flutter/material.dart';
import 'package:handpicked_shop/widget/text.dart';
import 'package:velocity_x/velocity_x.dart';

class BannerPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.26,
      width: context.screenWidth,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildStackTYpe(
            context,
            background: Vx.red100,
            assetImage: Image.asset(
              "assets/bannerMobile.png",
              fit: BoxFit.cover,
            ),
            discountText: "Flat 15% OFF",
          ),
          12.widthBox,
          buildStackTYpe(
            context,
            background: Vx.blue200,
            assetImage: Image.asset(
              "assets/bannerheadphone.png",
              fit: BoxFit.cover,
            ),
            attentionText: "Best\nDeal".toUpperCase(),
            productName: "on HeadPhone",
            discountText: "Flat 20% OFF",
          ),
          12.widthBox,
          buildStackTYpe(
            context,
            background: Vx.cyan200,
            assetImage: Image.asset(
              "assets/bannerMobile.png",
              fit: BoxFit.cover,
            ),
            productName: "on Samsung",
            discountText: "Flat 15% OFF",
          ),
        ],
      ),
    );
  }

  Widget buildStackTYpe(BuildContext context,
      {Color background,
      Widget assetImage,
      String attentionText,
      String discountText,
      String productName}) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: background, borderRadius: BorderRadius.circular(20)),
          height: context.screenHeight * 0.3,
          width: context.screenWidth * 0.8,
        ),
        Positioned(
          top: context.screenHeight * 0.05,
          right: context.screenWidth * 0.0,
          child: Container(
            width: context.screenWidth * 0.45,
            child: assetImage,
          ),
        ),
        Positioned(
          top: context.screenHeight * 0.06,
          left: context.screenWidth * 0.05,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                color: Vx.white,
                width: context.screenWidth * 0.2,
                child: text(
                  attentionText ?? "Best\nBuy".toUpperCase(),
                  size: context.textTheme.headline5.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              15.heightBox,
              text(
                discountText,
                size: context.textTheme.headline5.fontSize,
                fontWeight: FontWeight.bold,
              ),
              text(
                productName ?? "on Samsung",
                color: Vx.gray400,
                size: 17,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
