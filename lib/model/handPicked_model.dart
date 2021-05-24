import 'package:flutter/material.dart';

class PickedData {
  final String title;
  final String siteName;
  final Image image;
  final int price;

  PickedData({this.price, this.title, this.siteName, this.image});
}

List<PickedData> getPickedData = [
  PickedData(
    title: "40% OFF on Canon 1DX M2",
    siteName: "beauty.com",
    price: 2499,
    image: Image.asset(
      'assets/camera.jpg',
      fit: BoxFit.cover,
    ),
  ),
  PickedData(
    title: "40% OFF on Skullcandy Bluetooth Headset ",
    siteName: "headset_market.com",
    price: 1200,
    image: Image.asset(
      'assets/headphone.jpg',
      fit: BoxFit.cover,
    ),
  ),
  // PickedData(
  //   title: "40% OFF on Canon 1DX M2",
  //   siteName: "beauty.com",
  //   price: 2499,
  //   image: Image.asset(
  //     '',
  //     fit: BoxFit.cover,
  //   ),
  // ),
];
