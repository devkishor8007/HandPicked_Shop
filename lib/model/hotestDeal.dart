import 'package:flutter/material.dart';

class HottestDealModel {
  final String title;
  final Image image;
  final int price;
  final String discountPer;

  HottestDealModel({this.discountPer, this.price, this.title, this.image});
}

List<HottestDealModel> getHottestDealModel = [
  HottestDealModel(
      title: "DJI Spark Fly Drone",
      price: 596,
      image: Image.asset(
        'assets/drone.jpg',
        fit: BoxFit.cover,
      ),
      discountPer: "45% OFF"),
  HottestDealModel(
    title: "Converse Sneakers",
    price: 99,
    discountPer: "20% OFF",
    image: Image.asset(
      'assets/shoes.jpg',
      fit: BoxFit.cover,
    ),
  ),
  HottestDealModel(
      title: "Samsung Galaxy S9",
      price: 799,
      image: Image.asset(
        'assets/samsung.jpg',
        fit: BoxFit.cover,
      ),
      discountPer: "20% OFF"),
  HottestDealModel(
    title: "JBL Echo",
    price: 69,
    discountPer: "50% OFF",
    image: Image.asset(
      'assets/jbl.jpg',
      fit: BoxFit.cover,
    ),
  ),
  HottestDealModel(
      title: "Business Laptop",
      price: 596,
      image: Image.asset(
        'assets/laptop.jpg',
        fit: BoxFit.cover,
      ),
      discountPer: "15% OFF"),
  HottestDealModel(
    title: "Oculus Quest",
    price: 490,
    discountPer: "20% OFF",
    image: Image.asset(
      'assets/vr.jpg',
      fit: BoxFit.cover,
    ),
  ),
];
