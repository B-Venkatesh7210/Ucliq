import 'package:flutter/material.dart';

class CategoryCardListClass {
  String? categoryName;
  String? categoryImg;
  Color? categoryColor;
  CategoryCardListClass(
      {this.categoryName, this.categoryImg, this.categoryColor});
}

List<CategoryCardListClass> categoryCard = [
  CategoryCardListClass(
      categoryName: 'Meat',
      categoryImg: 'assets/categoryMeat.png',
      categoryColor: Color.fromRGBO(235, 180, 183, 1)),
  CategoryCardListClass(
      categoryName: 'Fruits & Vegetable',
      categoryImg: 'assets/categoryFruit.png',
      categoryColor: Color.fromRGBO(180, 212, 235, 1)),
  CategoryCardListClass(
      categoryName: 'Food Staples',
      categoryImg: 'assets/categoryFood.png',
      categoryColor: Color.fromRGBO(180, 235, 192, 1)),
  CategoryCardListClass(
      categoryName: 'Ready To Eat',
      categoryImg: 'assets/categoryReadyToEat.png',
      categoryColor: Color.fromRGBO(237, 220, 187, 1)),
];
