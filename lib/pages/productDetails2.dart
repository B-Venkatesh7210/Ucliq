import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/models/chickenSwipeImagesModel.dart';
import 'package:ucliq/pages/cart.dart';
import 'package:ucliq/pages/productDetails.dart';
import 'package:ucliq/widgets/chickenSwipeImagesWidget.dart';
import 'package:ucliq/widgets/imageSliderWidget.dart';
import 'package:ucliq/widgets/redButtonNavigator.dart';

class ProductDetails2 extends StatefulWidget {
  const ProductDetails2({Key? key}) : super(key: key);

  @override
  _ProductDetails2State createState() => _ProductDetails2State();
}

class _ProductDetails2State extends State<ProductDetails2> {
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
          child: Column(children: [
        ImageSlider(images: chickenSwipe2),
        SizedBox(height: 8),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Full Chicken',
                      style: GoogleFonts.roboto(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'SOLD BY: RK CHICKEN',
                      style: GoogleFonts.roboto(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Rs.3000',
                  style: GoogleFonts.roboto(
                      color: Color.fromRGBO(215, 59, 70, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Deliver on Saturday',
                      style: GoogleFonts.roboto(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Qty - 100 kg',
                      style: GoogleFonts.roboto(
                          fontSize: 12, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  '06:30 AM - 09:00 AM',
                  style: GoogleFonts.roboto(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Divider(
          height: 10,
          thickness: 1,
          color: Colors.grey,
        ),
        Expanded(
          child: Container(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:
              RedButtonNavigator(textName: 'PROCEED TO CART', navigate: Cart()),
        )
      ])),
    );
  }

  imageSlider(List<String> chickenSwipe2, Function() updateState) {}
}
