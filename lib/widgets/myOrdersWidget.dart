import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:ucliq/models/myOrdersModel.dart';
import 'package:ucliq/pages/orderDetails.dart';

class MyOrder extends StatelessWidget {
  final MyOrderDetails? orderDetails;
  MyOrder({
    this.orderDetails,
    Key? key,
  }) : super(key: key);
  var dateFormat = DateFormat("dd MMM yyyy");

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => OrderDetails(
                      orderDetails: orderDetails!,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                orderDetails!.img!,
                height: 143,
                width: 115,
              ),
              SizedBox(width: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ordered from',
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(129, 129, 129, 1),
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      orderDetails!.shopName!,
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      orderDetails!.orderDesp!,
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(129, 129, 129, 1),
                          fontSize: 11,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: 10),
                    Text(
                      orderDetails!.statusText!,
                      style: GoogleFonts.roboto(
                          color: orderDetails!.statusColor!,
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Rs ${orderDetails!.price!.toString()}',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Order ID: ${orderDetails!.orderId!}',
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(129, 129, 129, 1),
                          fontSize: 9,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Placed on: ${dateFormat.format(orderDetails!.date!)}',
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(129, 129, 129, 1),
                          fontSize: 9,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Color.fromRGBO(99, 99, 99, 1),
                ),
              )
            ],
          ),
          height: 130,
          width: double.infinity,
        ),
      ),
    );
  }
}
