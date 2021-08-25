import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:ucliq/models/myOrdersModel.dart';

import 'package:ucliq/pages/trackOrder.dart';

class OrderDetails extends StatefulWidget {
  final MyOrderDetails orderDetails;

  OrderDetails({required this.orderDetails, Key? key}) : super(key: key);

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  var dateFormat = DateFormat("dd MMM yyyy");
  var dateFormat1 = DateFormat("dd'/'MM'/'yyyy");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Details'),
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
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(236, 235, 235, 1),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order ID : ${widget.orderDetails.orderId!}',
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(129, 129, 129, 1),
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Placed On : ${dateFormat1.format(widget.orderDetails.date!)}',
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(215, 59, 70, 1),
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                  ]),
            ),
            Expanded(
              flex: 9,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.orderDetails.shopName!} farm PVT LTD.',
                        style: GoogleFonts.roboto(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            'Rs ${widget.orderDetails.price!}',
                            style: GoogleFonts.roboto(
                                color: Color.fromRGBO(215, 59, 70, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '(1 Item | 18 Units)',
                            style: GoogleFonts.roboto(
                                color: Color.fromRGBO(129, 129, 129, 1),
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Expected Delivery: ${dateFormat.format(widget.orderDetails.expDate!)}',
                        // 'Expected Delivery: 23 Jul 2021',
                        style: GoogleFonts.roboto(
                            color: Color.fromRGBO(99, 99, 99, 1),
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Payment Mode: Full COD',
                        style: GoogleFonts.roboto(
                            color: Color.fromRGBO(99, 99, 99, 1),
                            fontSize: 8,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Verification Pending..............',
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(215, 59, 70, 1),
                            borderRadius: BorderRadius.circular(3)),
                        width: double.infinity,
                        height: 30,
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromRGBO(215, 59, 70, 1))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TrackOrder(
                                            orderDetails: widget.orderDetails,
                                          )));
                            },
                            child: Text(
                              'Track Order',
                              style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(215, 59, 70, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(width: 30),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromRGBO(255, 202, 40, 1))),
                            onPressed: () {},
                            child: Text(
                              'Cancel Order',
                              style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(255, 202, 40, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(thickness: 1, height: 0, color: Colors.grey[500]),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: 'Verification Submitted: ',
                    style: GoogleFonts.roboto(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                    text: 'Our team will verify your account shortly',
                    style: GoogleFonts.roboto(
                        color: Colors.grey[700],
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ])),
                width: double.infinity,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 3,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payment Summary',
                        style: GoogleFonts.roboto(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Bill Details, Refund Details, Delivary Address......',
                        style: GoogleFonts.roboto(
                            color: Color.fromRGBO(99, 99, 99, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                width: double.infinity,
                color: Colors.white,
              ),
            ),
            Divider(thickness: 1, height: 0, color: Colors.grey[500]),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'View Payment Summary',
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(255, 202, 40, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromRGBO(255, 202, 40, 1),
                      size: 15,
                    )
                  ],
                ),
                width: double.infinity,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Order Items',
                  style: GoogleFonts.roboto(
                      fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 100,
                        child: Image.asset(
                          widget.orderDetails.img!,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.orderDetails.shopName!,
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              widget.orderDetails.orderDesp!,
                              style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(129, 129, 129, 1),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Order ID: ${widget.orderDetails.orderId!}',
                              style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(129, 129, 129, 1),
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Qty - 100 kg',
                              style: GoogleFonts.roboto(
                                  fontSize: 9, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'Rs ${widget.orderDetails.price!.toString()}',
                              style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(215, 59, 70, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                width: double.infinity,
                color: Colors.white,
              ),
            )
          ],
        ),
      )),
    );
  }
}
