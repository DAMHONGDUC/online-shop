import 'package:flutter/material.dart';

class Product {
  String? image, title, des;
  int? price, size, id;
  Color? color;
  String? type;

  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.size,
    this.color,
    this.des,
    this.type,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      des: dummyText,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE),
      type: "Hand Bag"),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 8,
      des: dummyText,
      type: "Hand Bag",
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      des: dummyText,
      type: "Hand Bag",
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      des: dummyText,
      type: "Hand Bag",
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      des: dummyText,
      type: "Hand Bag",
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    des: dummyText,
    type: "Hand Bag",
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 7,
    title: "Office Code",
    price: 234,
    size: 12,
    des: dummyText,
    type: "Jewellery",
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
  Product(
      id: 8,
      title: "Office Code",
      price: 234,
      size: 12,
      des: dummyText,
      type: "Dresses",
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 9,
    title: "Office Code",
    price: 234,
    size: 12,
    des: dummyText,
    type: "Dresses",
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
