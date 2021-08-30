import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/models/chickenSwipeImagesModel.dart';
import 'package:ucliq/widgets/chickenSwipeImagesWidget.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/sellersListPin.png',
                      width: 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Delivery Address',
                          style: GoogleFonts.roboto(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Bangalore, Karnataka-\n560019',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(129, 129, 129, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Please complete your address',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(215, 59, 70, 1),
                              fontSize: 10,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  InkWell(
                    onTap: () {
                      print('tapped');
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'Edit',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(215, 59, 70, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border:
                            Border.all(color: Color.fromRGBO(215, 59, 70, 1)),
                        color: Colors.white,
                      ),
                      height: MediaQuery.of(context).size.height / 20,
                      width: MediaQuery.of(context).size.width / 5,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ChickenSwipeImages(
                        height: 7.5,
                        width: 2.4,
                        chickenSwipeImagesClass: chickenSwipe[0]),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: ChickenSwipeImages(
                        height: 7.5,
                        width: 2.4,
                        chickenSwipeImagesClass: chickenSwipe[0]),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ChickenSwipeImages(
                        height: 7.5,
                        width: 2.4,
                        chickenSwipeImagesClass: chickenSwipe[0]),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: ChickenSwipeImages(
                        height: 7.5,
                        width: 2.4,
                        chickenSwipeImagesClass: chickenSwipe[0]),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Divider(
              height: 10,
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      print('tapped');
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.edit),
                            SizedBox(width: 10),
                            Text(
                              'Edit Order',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 40, 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
