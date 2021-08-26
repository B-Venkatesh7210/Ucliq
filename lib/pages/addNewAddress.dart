import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/addressList.dart';

import 'package:ucliq/widgets/redButtonNavigator.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  _AddNewAddressState createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  TextEditingController representativeName = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController shopNo = TextEditingController();
  TextEditingController street = TextEditingController();
  TextEditingController landmark = TextEditingController();
  TextEditingController mobNo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Add New Address'),
      ),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              color: Color.fromRGBO(255, 252, 230, 1),
              child: Row(
                children: [
                  Image.asset('assets/sellersListPin.png', width: 20),
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      'Registered Mobile N0: +91 9876543210',
                      style: GoogleFonts.roboto(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Delivery Address',
                        style: GoogleFonts.roboto(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 40,
                      child: TextField(
                        controller: representativeName,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(0),
                            labelText: 'Representative Name',
                            labelStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(129, 129, 129, 1))),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 40,
                      child: TextField(
                        controller: pincode,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(0),
                            labelText: 'Pincode',
                            labelStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(129, 129, 129, 1))),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 40,
                            child: TextField(
                              controller: state,
                              decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(0),
                                  labelText: 'State',
                                  labelStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(129, 129, 129, 1))),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            child: TextField(
                              controller: city,
                              decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(0),
                                  labelText: 'City',
                                  labelStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(129, 129, 129, 1))),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 40,
                      child: TextField(
                        controller: shopNo,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(0),
                            labelText: 'Shop No / Floor / Building',
                            labelStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(129, 129, 129, 1))),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 40,
                      child: TextField(
                        controller: street,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(0),
                            labelText: 'Street / Locality',
                            labelStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(129, 129, 129, 1))),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 40,
                      child: TextField(
                        controller: landmark,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(0),
                            labelText: 'Landmark',
                            labelStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(129, 129, 129, 1))),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 40,
                      child: TextField(
                        controller: mobNo,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(0),
                            labelText: 'Alternative Mobile Number',
                            labelStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(129, 129, 129, 1))),
                      ),
                    ),
                    // Expanded(child: Container()),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: RedButtonNavigator(
                              height: 30,
                              textName: 'SAVE ADDRESS',
                              navigate: AddressList()),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
