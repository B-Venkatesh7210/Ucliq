import 'package:flutter/material.dart';

import 'package:ucliq/models/myFavouritesListModel.dart';
import 'package:ucliq/pages/searchBar.dart';
import 'package:ucliq/widgets/dialogBoxCallSupport.dart';
import 'package:ucliq/widgets/myFavouritesListItemWidget.dart';

class MyFavourites extends StatefulWidget {
  const MyFavourites({Key? key}) : super(key: key);

  @override
  _MyFavouritesState createState() => _MyFavouritesState();
}

class _MyFavouritesState extends State<MyFavourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favourites'),
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
              itemCount: favourites.length,
              itemBuilder: (context, index) {
                return MyFavouritesListItem(
                    myFavouritesListItemClass: favourites[index]);
              })),
    );
  }
}
