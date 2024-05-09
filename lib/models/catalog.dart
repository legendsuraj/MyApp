import 'dart:convert';
import 'package:flutter/services.dart';
class CatalogModel {
  static List <Item> items =[
    Item(
      id: 1,
      name: "Iphone 12",
      desc: "BEst PHeinw",
      price: 999,
      color: "#33505a",
      image: "https://m.media-amazon.com/images/I/71v2jVh6nIL._AC_UF1000,1000_QL80_.jpg",
    )
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

  factory Item.fromMap(Map<dynamic, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }
  toMap() => {
    "id" : id,
    "name" : name,
    "desc" : desc,
    "price" : price,
    "color" : color,
    "image" : image,

  };
}
