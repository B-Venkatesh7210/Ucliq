import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ucliq/models/chickenSwipeImagesModel.dart';
import 'package:ucliq/pages/productDetails2.dart';
import 'package:ucliq/widgets/chickenSwipeImagesWidget.dart';
import 'package:ucliq/widgets/imageSliderWidget.dart';
import 'package:ucliq/widgets/productDetailsRowItemWidget.dart';
import 'package:ucliq/widgets/redButtonNavigator.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  updateState() {
    print('hello');
    setState(() {});
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
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
          child: Column(
        children: [
          ImageSlider(images: chickenSwipe2),
          SizedBox(height: 10),
          Divider(
            height: 10,
            thickness: 1,
            color: Colors.grey,
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full Chicken',
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Live cut',
                    style: GoogleFonts.roboto(
                        fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'SOLD BY: RK CHICKEN',
                    style: GoogleFonts.roboto(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Rs.3000',
                    style: GoogleFonts.roboto(
                        color: Color.fromRGBO(215, 59, 70, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductDetailsRowItem(
                    color: Color.fromRGBO(255, 202, 40, 1),
                  ),
                  SizedBox(width: 10),
                  ProductDetailsRowItem(
                    color: Color.fromRGBO(237, 220, 187, 1),
                  ),
                  SizedBox(width: 10),
                  ProductDetailsRowItem(
                    color: Color.fromRGBO(237, 220, 187, 1),
                  ),
                  SizedBox(width: 10),
                  ProductDetailsRowItem(
                    color: Color.fromRGBO(237, 220, 187, 1),
                  ),
                  SizedBox(width: 10),
                  ProductDetailsRowItem(
                    color: Color.fromRGBO(237, 220, 187, 1),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 252, 230, 1),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(5.0, 5.0),
                        blurRadius: 10.0,
                        spreadRadius: 2.0)
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Select Delivery Slot',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          print('tapped');
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  'Saturday',
                                  style: GoogleFonts.roboto(
                                      color: Color.fromRGBO(129, 129, 129, 1),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '06:30 AM - 09:00 AM',
                                  style: GoogleFonts.roboto(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          print('tapped');
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  'Saturday',
                                  style: GoogleFonts.roboto(
                                      color: Color.fromRGBO(129, 129, 129, 1),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '06:30 AM - 09:00 AM',
                                  style: GoogleFonts.roboto(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(224, 224, 224, 1),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 40),
                  RedButtonNavigator(
                      textName: 'DONE', navigate: ProductDetails2())
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

