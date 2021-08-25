import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/models/sellerListModelItem.dart';

class SellerListItem extends StatefulWidget {
  final SellerListItemClass sellerListItemClass;
  SellerListItem({required this.sellerListItemClass, Key? key})
      : super(key: key);

  @override
  _SellerListItemState createState() => _SellerListItemState();
}

class _SellerListItemState extends State<SellerListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.sellerListItemClass.itemName!,
                  style: GoogleFonts.roboto(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/sellersListPin.png',
                      width: 15,
                    ),
                    SizedBox(width: 10),
                    Text(
                      widget.sellerListItemClass.cityName!,
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(99, 99, 99, 1),
                          fontSize: 11,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 5),
            Text(
              'Min. Order Vakue - Rs.${widget.sellerListItemClass.minOrderValue}',
              style:
                  GoogleFonts.roboto(fontSize: 11, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 5),
            Text(
              '${widget.sellerListItemClass.numOfProducts} Products',
              style: GoogleFonts.roboto(
                  color: Color.fromRGBO(99, 99, 99, 1),
                  fontSize: 11,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 5),
            Container(
              height: MediaQuery.of(context).size.height / 8,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('assets/myOrdersImg1.png'),
                    SizedBox(width: 10),
                    Image.asset('assets/myOrdersImg1.png'),
                    SizedBox(width: 10),
                    Image.asset('assets/myOrdersImg1.png'),
                    SizedBox(width: 10),
                    Image.asset('assets/myOrdersImg1.png'),
                    SizedBox(width: 10),
                    Image.asset('assets/myOrdersImg1.png'),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Material(
              child: InkWell(
                onTap: () {
                  print('tapped');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'VISIT SELLER SHOP',
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(215, 59, 70, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    Image.asset(
                      'assets/sellerShop.png',
                      width: MediaQuery.of(context).size.width / 12,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
