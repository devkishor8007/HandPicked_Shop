import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:handpicked_shop/model/hotestDeal.dart';
import 'package:handpicked_shop/view_screen/screens/detail_decks_hottestDeal.dart';
import 'package:handpicked_shop/widget/appbar.dart';
import 'package:handpicked_shop/widget/text.dart';
import 'package:velocity_x/velocity_x.dart';

class DecksHottestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title:
            text("Hottest Deals", color: Vx.black, fontWeight: FontWeight.bold),
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.screenWidth * 0.03,
              vertical: context.screenHeight * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              15.heightBox,
              StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  staggeredTileBuilder: (index) {
                    return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
                  },
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: getHottestDealModel.length,
                  itemBuilder: (_, index) {
                    var data = getHottestDealModel[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DetailDecksHottestDeal(
                              hottestDealModel: data,
                            ),
                          ),
                        );
                      },
                      child: buildStaggeredImageAndIntro(context, data),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStaggeredImageAndIntro(
      BuildContext context, HottestDealModel data) {
    return Container(
      height: context.screenHeight * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                height: context.screenHeight * 0.29,
                width: context.screenWidth,
                child: Hero(tag: "${data.title}", child: data.image)),
          ),
          7.heightBox,
          text(data.title),
          7.heightBox,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              text(
                "\$" + data.price.toString(),
                fontWeight: FontWeight.bold,
                size: context.textTheme.subtitle2.fontSize,
                color: Vx.blue500,
              ),
              7.widthBox,
              text(
                data.discountPer,
                fontWeight: FontWeight.bold,
                size: context.textTheme.subtitle2.fontSize,
                color: Vx.gray300,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
