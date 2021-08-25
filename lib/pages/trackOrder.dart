import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:ucliq/models/myOrdersModel.dart';

class TrackOrder extends StatefulWidget {
  final MyOrderDetails orderDetails;
  TrackOrder({required this.orderDetails, Key? key}) : super(key: key);

  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  var dateFormat = DateFormat("dd MMM yyyy");
  var dateFormat1 = DateFormat("dd'/'MM'/'yyyy");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track Order'),
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
              child: Column(children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.orderDetails.shopName!,
                          style: GoogleFonts.roboto(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.orderDetails.orderDesp!,
                              style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(129, 129, 129, 1),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              'Order ID : ${widget.orderDetails.orderId}',
                              style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(129, 129, 129, 1),
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    )),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    color: Colors.white,
                    width: double.infinity,
                    child: Column(
                      children: [
                        TimelineTile(
                          indicatorStyle: IndicatorStyle(
                              width: 20,
                              height: 20,
                              color: Color.fromRGBO(255, 202, 40, 1)),
                          afterLineStyle:
                              LineStyle(thickness: 2, color: Colors.black),
                          isFirst: true,
                          axis: TimelineAxis.vertical,
                          alignment: TimelineAlign.start,
                          endChild: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 40),
                                Image.asset('assets/oplaced.png',
                                    width: 45, height: 45),
                                SizedBox(width: 40),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Order Placed',
                                      style: GoogleFonts.roboto(
                                          color:
                                              Color.fromRGBO(129, 129, 129, 1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Date : ${dateFormat1.format(widget.orderDetails.oplacedDate!)}',
                                      style: GoogleFonts.roboto(
                                          color:
                                              Color.fromRGBO(129, 129, 129, 1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                )
                              ],
                            ),
                            constraints: const BoxConstraints(minHeight: 80),
                            color: Colors.white,
                          ),
                        ),
                        TimelineTile(
                          beforeLineStyle:
                              LineStyle(thickness: 2, color: Colors.black),
                          indicatorStyle: IndicatorStyle(
                              width: 20,
                              height: 20,
                              color: Color.fromRGBO(87, 183, 147, 1)),
                          afterLineStyle:
                              LineStyle(thickness: 2, color: Colors.black),
                          axis: TimelineAxis.vertical,
                          alignment: TimelineAlign.start,
                          endChild: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 40),
                                Image.asset('assets/overified.png',
                                    width: 45, height: 45),
                                SizedBox(width: 40),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Order Verified',
                                      style: GoogleFonts.roboto(
                                          color:
                                              Color.fromRGBO(129, 129, 129, 1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Date : ${dateFormat1.format(widget.orderDetails.overifiedDate!)}',
                                      style: GoogleFonts.roboto(
                                          color:
                                              Color.fromRGBO(129, 129, 129, 1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                )
                              ],
                            ),
                            constraints: const BoxConstraints(minHeight: 80),
                            color: Colors.white,
                          ),
                        ),
                        TimelineTile(
                          beforeLineStyle:
                              LineStyle(thickness: 2, color: Colors.black),
                          indicatorStyle: IndicatorStyle(
                              width: 20,
                              height: 20,
                              color: Color.fromRGBO(215, 59, 70, 1)),
                          isLast: true,
                          axis: TimelineAxis.vertical,
                          alignment: TimelineAlign.start,
                          endChild: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 40),
                                Image.asset('assets/ocancelled.png',
                                    width: 45, height: 45),
                                SizedBox(width: 40),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Order Cancelled',
                                      style: GoogleFonts.roboto(
                                          color:
                                              Color.fromRGBO(129, 129, 129, 1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Date : ${dateFormat1.format(widget.orderDetails.ocancelledDate!)}',
                                      style: GoogleFonts.roboto(
                                          color:
                                              Color.fromRGBO(129, 129, 129, 1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                )
                              ],
                            ),
                            constraints: const BoxConstraints(minHeight: 80),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]))),
    );
  }
}
