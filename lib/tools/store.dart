import 'package:flutter/material.dart';

class Store {
  String itemName;
  double itemPrice;
  String itemImage;
  double itemRating;


  Store.items({this.itemName, this.itemPrice, this.itemImage, this.itemRating});

}

List<Store> storeItems = [

  Store.items(
      itemName: "Coiffure",
      itemPrice: 15000,
      itemImage: "https://goo.gl/hCNb3h",
      itemRating: 0.0
  ),

  Store.items(
      itemName: "Haut",
      itemPrice: 10000,
      itemImage: "https://goo.gl/ZkKyBd",
      itemRating: 0.0
  ),

  Store.items(
      itemName: "Bas",
      itemPrice: 15000,
      itemImage: "https://goo.gl/Rv9oDW",
      itemRating: 0.0
  ),

  Store.items(
      itemName: "Chaussure",
      itemPrice: 25000,
      itemImage: "https://goo.gl/prrMKT",
      itemRating: 0.0
  ),
  Store.items(
      itemName: "Coiffure",
      itemPrice: 15000,
      itemImage: "https://goo.gl/65t82v",
      itemRating: 0.0
  ),

  Store.items(
      itemName: "Haut",
      itemPrice: 10000,
      itemImage: "https://goo.gl/eRbgn1",
      itemRating: 0.0
  ),

  Store.items(
      itemName: "Bas",
      itemPrice: 15000,
      itemImage: "https://goo.gl/CNfh7f",
      itemRating: 0.0
  ),

  Store.items(
      itemName: "Chaussure",
      itemPrice: 25000,
      itemImage: "https://goo.gl/9zsW8E",
      itemRating: 0.0
  ),

];