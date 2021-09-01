import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/models/placeOrderListItemModel.dart';
import 'package:ucliq/pages/checkout.dart';
import 'package:ucliq/pages/searchBar.dart';
import 'package:ucliq/widgets/dialogBoxCallSupport.dart';
import 'package:ucliq/widgets/placeOrderListItemWidget.dart';
import 'package:ucliq/widgets/redButtonNavigator.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({Key? key}) : super(key: key);

  @override
  _PlaceOrderState createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
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
          child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: placeOrder.length,
                itemBuilder: (context, index) => PlaceOrderListItem(
                    placeOrderListItemClass: placeOrder[index])),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            color: Color.fromRGBO(236, 235, 235, 1),
            height: MediaQuery.of(context).size.height / 10,
            width: double.infinity,
            child: Row(
              children: [
                Image.asset(
                  'assets/ruppee.png',
                  width: 20,
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '4,000',
                        style: GoogleFonts.roboto(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Including GST',
                        style: GoogleFonts.roboto(
                            fontSize: 9, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Expanded(child: Container()),
                RedButtonNavigator(
                  textName: 'Place Order',
                  navigate: Checkout(),
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 22,
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
