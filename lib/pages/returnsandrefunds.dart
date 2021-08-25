import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/models/myOrdersModel.dart';

class ReturnsAndRefunds extends StatefulWidget {
  ReturnsAndRefunds({Key? key}) : super(key: key);

  @override
  _ReturnsAndRefundsState createState() => _ReturnsAndRefundsState();
}

class _ReturnsAndRefundsState extends State<ReturnsAndRefunds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Returns & Refunds'),
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
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/myOrdersImg1.png',
                    height: 143,
                    width: 115,
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
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
                          'RK Chicken',
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Skin out cleaned and chopped',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(129, 129, 129, 1),
                              fontSize: 11,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Order ID : ASDFG5499860',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(129, 129, 129, 1),
                              fontSize: 9,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Placed on : 20th July 2021',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(129, 129, 129, 1),
                              fontSize: 9,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Order Returned',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(215, 59, 70, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              'Rs 3000',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Refunded',
                              style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(87, 183, 147, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Returned & Refunded on : 20th July 2021',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(129, 129, 129, 1),
                              fontSize: 9,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              height: 130,
              width: double.infinity,
            ),
            SizedBox(height: 15),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/myOrdersImg1.png',
                    height: 143,
                    width: 115,
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
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
                          'RK Chicken',
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Skin out cleaned and chopped',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(129, 129, 129, 1),
                              fontSize: 11,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Order ID : ASDFG5499860',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(129, 129, 129, 1),
                              fontSize: 9,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Placed on : 20th July 2021',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(129, 129, 129, 1),
                              fontSize: 9,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Order Returned',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(215, 59, 70, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              'Rs 3000',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Refunded',
                              style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(87, 183, 147, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Returned & Refunded on : 20th July 2021',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(129, 129, 129, 1),
                              fontSize: 9,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              height: 130,
              width: double.infinity,
            ),
          ],
        ),
      )),
    );
  }
}
