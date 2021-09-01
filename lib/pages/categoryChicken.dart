import 'package:flutter/material.dart';

import 'package:ucliq/models/chickenListItemModel.dart';
import 'package:ucliq/pages/searchBar.dart';
import 'package:ucliq/widgets/chickenListItemWidget.dart';
import 'package:ucliq/widgets/dialogBoxCallSupport.dart';

class CategoryChicken extends StatefulWidget {
  const CategoryChicken({Key? key}) : super(key: key);

  @override
  _CategoryChickenState createState() => _CategoryChickenState();
}

class _CategoryChickenState extends State<CategoryChicken> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicken'),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 2),
              child: IconButton(
                icon: Icon(Icons.call),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return DialogBoxCallSupport();
                      });
                },
                iconSize: 30,
              )),
          Padding(
              padding: const EdgeInsets.only(right: 2),
              child: IconButton(
                icon: Icon(Icons.search_outlined),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchBar()));
                },
                iconSize: 30,
              )),
          Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
                iconSize: 30,
              ))
        ],
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: chicken.length,
              itemBuilder: (context, index) =>
                  ChickenListItem(chickenListItemClass: chicken[index]))),
    );
  }
}
