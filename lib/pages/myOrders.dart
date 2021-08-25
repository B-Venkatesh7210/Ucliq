import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ucliq/models/myOrdersModel.dart';

import 'package:ucliq/widgets/myOrdersWidget.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  TextEditingController searchInMyOrders = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders'),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(Icons.call),
                onPressed: () {},
                iconSize: 40,
              ))
        ],
      ),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.grey))),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      controller: searchInMyOrders,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: Color.fromRGBO(99, 99, 99, 1),
                          size: 30,
                        ),
                        hintText: "Search for Orders",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: Row(
                  children: [
                    Text(
                      'All \nOrders',
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(99, 99, 99, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                    Expanded(
                      child: Center(
                        child: IconButton(
                            padding: EdgeInsets.all(0),
                            splashRadius: 10,
                            onPressed: () {
                              print('tapped');
                            },
                            icon: Icon(Icons.arrow_drop_down)),
                      ),
                    )
                  ],
                ),
              ))
            ]),
            Divider(
              thickness: 2,
              height: 0,
            ),
            Material(
              elevation: 8,
              child: Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'All',
                        style: GoogleFonts.roboto(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Pending',
                        style: GoogleFonts.roboto(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Confirmation',
                        style: GoogleFonts.roboto(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Delivered',
                        style: GoogleFonts.roboto(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Cancelled',
                        style: GoogleFonts.roboto(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: orderItems.length,
                itemBuilder: (context, index) =>
                    MyOrder(orderDetails: orderItems[index]),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
