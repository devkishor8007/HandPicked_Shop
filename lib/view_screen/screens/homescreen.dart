import 'package:flutter/material.dart';
import 'package:handpicked_shop/helper/colors.dart';
import 'package:handpicked_shop/model/handPicked_model.dart';
import 'package:handpicked_shop/view_screen/screens/detail_homescreen.dart';
import 'package:handpicked_shop/view_screen/screens/bannerPost.dart';
import 'package:handpicked_shop/widget/appbar.dart';
import 'package:handpicked_shop/widget/text.dart';
import 'package:handpicked_shop/widget/textfield.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            text(
              "Hand",
              color: Vx.black,
            ),
            text(
              "Picked",
              color: blueColor,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: context.screenWidth * 0.04,
            ),
            child: Icon(
              Icons.notes,
              color: Vx.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: context.screenWidth * 0.03,
            vertical: context.screenHeight * 0.01),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            BannerPost(),
            18.heightBox,
            buildTextField(),
            18.heightBox,
            buildListOFDetail(context),
          ],
        ),
      ),
    );
  }

  Widget buildListOFDetail(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.9,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: getPickedData.length,
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailHandPickedScreen(
                      pickedData: getPickedData[index],
                    ),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: context.screenHeight * 0.3,
                      width: context.screenWidth,
                      child: Hero(
                          tag: "${getPickedData[index].title}",
                          child: getPickedData[index].image)),
                  7.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: text(
                          getPickedData[index].title,
                          fontWeight: FontWeight.bold,
                          size: 18,
                        ),
                      ),
                      // 90.widthBox,
                      text(
                        "\$ " + getPickedData[index].price.toString(),
                        fontWeight: FontWeight.bold,
                        size: 18,
                      ),
                    ],
                  ),
                  3.heightBox,
                  text(getPickedData[index].siteName, color: greyColor),
                  18.heightBox,
                ],
              ),
            );
          }),
    );
  }
}
