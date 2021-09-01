import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/models/placeOrderListItemModel.dart';
import 'package:ucliq/pages/checkout.dart';
import 'package:ucliq/pages/editProductDetails.dart';
import 'package:ucliq/widgets/dialogBoxDeletePlaceOrder.dart';

class PlaceOrderListItem extends StatelessWidget {
  final PlaceOrderListItemClass placeOrderListItemClass;
  const PlaceOrderListItem({
    required this.placeOrderListItemClass,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                Image.asset(
                  placeOrderListItemClass.img!,
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: MediaQuery.of(context).size.height / 6,
                  fit: BoxFit.fill,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          placeOrderListItemClass.itemName!,
                          style: GoogleFonts.roboto(
                              fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'SOLD BY: ${placeOrderListItemClass.shopName}',
                          style: GoogleFonts.roboto(
                              fontSize: 9, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Qty - ${placeOrderListItemClass.qty}',
                          style: GoogleFonts.roboto(
                              fontSize: 9, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Deliver on Saturday  - 06:30 AM - 09:00 AM',
                          style: GoogleFonts.roboto(
                              fontSize: 9, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Total: Rs ${placeOrderListItemClass.price}',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(215, 59, 70, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            EditProductDetails()));
                              },
                              child: Container(
                                child: Center(
                                  child: Icon(Icons.edit, size: 20),
                                ),
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 202, 40, 1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return DialogBoxDeletePlaceOrder();
                                    });
                              },
                              child: Container(
                                child: Center(
                                  child: Icon(Icons.delete, size: 20),
                                ),
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 202, 40, 1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Checkout()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(215, 59, 70, 1),
                                    borderRadius: BorderRadius.circular(8)),
                                height: 30,
                                width: MediaQuery.of(context).size.width / 4.25,
                                child: Center(
                                  child: Text(
                                    'Place Order',
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 10,
            thickness: 1,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
