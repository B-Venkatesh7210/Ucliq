import 'package:flutter/material.dart';

class MyFavouritesListItemClass {
  String? itemName;
  String? itemDesp;
  num? itemPrice;
  String? shopName;
  String? favImg;

  MyFavouritesListItemClass(
      {this.itemName,
      this.itemDesp,
      this.itemPrice,
      this.shopName,
      this.favImg});
}

List<MyFavouritesListItemClass> favourites = [
  MyFavouritesListItemClass(
      itemName: 'Chicken Boneless',
      itemDesp: 'Skin out cleaned and chopped',
      itemPrice: 300,
      shopName: 'RK Chicken',
      favImg: 'assets/myFav1.png'),
  MyFavouritesListItemClass(
      itemName: 'Chicken Boneless',
      itemDesp: 'Skin out cleaned and chopped',
      itemPrice: 300,
      shopName: 'RK Chicken',
      favImg: 'assets/myFav2.png'),
  MyFavouritesListItemClass(
      itemName: 'Chicken Boneless',
      itemDesp: 'Skin out cleaned and chopped',
      itemPrice: 300,
      shopName: 'RK Chicken',
      favImg: 'assets/myFav1.png'),
  MyFavouritesListItemClass(
      itemName: 'Chicken Boneless',
      itemDesp: 'Skin out cleaned and chopped',
      itemPrice: 300,
      shopName: 'RK Chicken',
      favImg: 'assets/myFav1.png'),
  MyFavouritesListItemClass(
      itemName: 'Chicken Boneless',
      itemDesp: 'Skin out cleaned and chopped',
      itemPrice: 300,
      shopName: 'RK Chicken',
      favImg: 'assets/myFav1.png')
];
