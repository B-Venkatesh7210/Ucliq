import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/widgets/dialogBoxCallSupport.dart';
import 'package:ucliq/widgets/dialogBoxChooseDocument.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int payMethod = 1;
  int gst = 1;
  int index = 0;

  List<String> dropDownItems = ['Bill Book', 'Visiting Card', 'Shop Photo'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 241, 241, 1),
      appBar: AppBar(
        title: Text('Checkout'),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 2),
              child: IconButton(
                icon: Icon(Icons.call),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return DialogBoxCallSupport();
                      });
                },
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
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 12, right: 12, top: 15),
              color: Colors.white,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text('Delivery Address',
                        style: GoogleFonts.roboto(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(height: 12),
                  Divider(thickness: 2, height: 0),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ucliq Shop',
                            style: GoogleFonts.roboto(
                                fontSize: 15, fontWeight: FontWeight.w500)),
                        SizedBox(height: 5),
                        Text('DELHI - 110092',
                            style: GoogleFonts.roboto(
                                color: Color.fromRGBO(129, 129, 129, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w400)),
                        SizedBox(height: 5),
                        Text('Ph No : 9891017823',
                            style: GoogleFonts.roboto(
                                color: Color.fromRGBO(129, 129, 129, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w400)),
                        SizedBox(height: 5),
                        Text('Please complete your address',
                            style: GoogleFonts.roboto(
                                color: Color.fromRGBO(215, 59, 70, 1),
                                fontSize: 10,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  Divider(thickness: 2, height: 0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Color.fromRGBO(255, 202, 40, 1),
                                size: 20,
                              ),
                              SizedBox(width: 3),
                              Text('Add New Address',
                                  style: GoogleFonts.roboto(
                                      color: Color.fromRGBO(255, 202, 40, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 2,
                        color: Colors.grey[300],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.edit,
                                color: Color.fromRGBO(255, 202, 40, 1),
                                size: 15,
                              ),
                              SizedBox(width: 3),
                              Text('Change Address',
                                  style: GoogleFonts.roboto(
                                      color: Color.fromRGBO(255, 202, 40, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 12, right: 12, top: 15),
              color: Colors.white,
              height: 200,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text('Select Payment Option',
                        style: GoogleFonts.roboto(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(height: 12),
                  Divider(thickness: 2, height: 0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Radio(
                              value: 1,
                              groupValue: payMethod,
                              onChanged: (value1) {
                                payMethod = value1 as int;
                                setState(() {});
                              }),
                          Padding(
                            padding: const EdgeInsets.only(top: 13),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Full Cash On Delivery',
                                    style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                                Text('Remainig COD Limit',
                                    style: GoogleFonts.roboto(
                                        color: Color.fromRGBO(215, 59, 70, 1),
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400)),
                                SizedBox(height: 8),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 3, bottom: 3),
                                    child: Text('Rs 35,000 out of Rs 35,000',
                                        style: GoogleFonts.roboto(
                                            color:
                                                Color.fromRGBO(215, 59, 70, 1),
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(252, 212, 215, 1),
                                      borderRadius: BorderRadius.circular(15)),
                                  height: 15,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 2,
                              groupValue: payMethod,
                              onChanged: (value1) {
                                payMethod = value1 as int;
                                setState(() {});
                              }),
                          Text('20% Advance | 80% COD',
                              style: GoogleFonts.roboto(
                                  fontSize: 12, fontWeight: FontWeight.w400)),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 3,
                              groupValue: payMethod,
                              onChanged: (value1) {
                                payMethod = value1 as int;
                                setState(() {});
                              }),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('100% Advance',
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400)),
                              Text('3% Extra Discount',
                                  style: GoogleFonts.roboto(
                                      color: Color.fromRGBO(215, 59, 70, 1),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 12, right: 12, top: 15),
              color: Colors.white,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text('Upload Document',
                        style: GoogleFonts.roboto(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text('Please provide  one document for verification',
                        style: GoogleFonts.roboto(
                            fontSize: 8, fontWeight: FontWeight.w400)),
                  ),
                  SizedBox(height: 10),
                  Divider(thickness: 2, height: 0),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: gst,
                          onChanged: (value1) {
                            gst = value1 as int;
                            setState(() {});
                          }),
                      Text('I dont have GST'),
                      SizedBox(width: 30),
                      Radio(
                          value: 2,
                          groupValue: gst,
                          onChanged: (value1) {
                            gst = value1 as int;
                            setState(() {});
                          }),
                      Text('I want GST')
                    ],
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Please provide  one document for verification',
                        style: GoogleFonts.roboto(
                            color: Color.fromRGBO(129, 129, 129, 1),
                            fontSize: 8,
                            fontWeight: FontWeight.w400)),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: InkWell(
                          onTap: () async {
                            index = await showDialog(
                                context: context,
                                builder: (context) {
                                  return DialogBoxChooseDocument(index: index);
                                });
                            setState(() {});
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5)),
                              height: 30,
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: Row(
                                children: [
                                  Text(dropDownItems[index],
                                      style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500)),
                                  Icon(Icons.arrow_drop_down)
                                ],
                              )),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            child: Icon(
                              Icons.camera_alt_rounded,
                              size: 30,
                              color: Color.fromRGBO(129, 129, 129, 1),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(5)),
                            height: MediaQuery.of(context).size.height / 7,
                            width: MediaQuery.of(context).size.width / 4,
                          ),
                          SizedBox(height: 5),
                          Text('UPLOAD PHOTO',
                              style: GoogleFonts.roboto(
                                  fontSize: 10, fontWeight: FontWeight.w500))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 5000)
          ],
        ),
      )),
    );
  }
}
