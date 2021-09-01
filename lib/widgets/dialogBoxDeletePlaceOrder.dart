import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/placeOrder.dart';

class DialogBoxDeletePlaceOrder extends StatefulWidget {
  const DialogBoxDeletePlaceOrder({Key? key}) : super(key: key);

  @override
  _DialogBoxDeletePlaceOrderState createState() =>
      _DialogBoxDeletePlaceOrderState();
}

class _DialogBoxDeletePlaceOrderState extends State<DialogBoxDeletePlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        height: MediaQuery.of(context).size.height / 7,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Are you sure you want to remove?',
                style: GoogleFonts.roboto(
                    fontSize: 14, fontWeight: FontWeight.w500)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 10),
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Center(
                                  child: Text('Seller removed successfully',
                                      style: GoogleFonts.roboto(
                                          color:
                                              Color.fromRGBO(87, 183, 147, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500))),
                            ),
                          );
                        });
                  },
                  child: Text('YES',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(215, 59, 70, 1))),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('NO',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(87, 183, 147, 1))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
