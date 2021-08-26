import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/models/myFavouritesListModel.dart';
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
                onPressed: () {},
                iconSize: 30,
              )),
          Padding(
              padding: const EdgeInsets.only(right: 2),
              child: IconButton(
                icon: Icon(Icons.search_outlined),
                onPressed: () {},
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
