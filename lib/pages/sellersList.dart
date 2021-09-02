import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ucliq/pages/searchBar.dart';
import 'package:ucliq/widgets/dialogBoxCallSupport.dart';
import 'package:ucliq/widgets/sellerListItemWidget.dart';

import 'package:ucliq/models/sellerListModelItem.dart';

class SellersList extends StatefulWidget {
  const SellersList({Key? key}) : super(key: key);

  @override
  _SellersListState createState() => _SellersListState();
}

class _SellersListState extends State<SellersList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seller List'),
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
          child: Container(
              color: Color.fromRGBO(236, 235, 235, 1),
              width: double.infinity,
              height: double.infinity,
              child: ListView.builder(
                  itemCount: seller.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          bottom: index == seller.length - 1 ? 0 : 20),
                      child: SellerListItem(
                        sellerListItemClass: seller[index],
                      ),
                    );
                  }))),
    );
  }
}
