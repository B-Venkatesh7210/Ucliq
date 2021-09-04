import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/home_page.dart';
import 'package:ucliq/widgets/dialogBoxCallSupport.dart';
import 'package:ucliq/widgets/myOrdersWidget.dart';
import 'package:ucliq/widgets/redButtonNavigator.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2.4,
            child: Stack(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Center(
                      child: Text('We have recevide your order',
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(215, 59, 70, 1),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(200),
                          bottomRight: Radius.circular(200))),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 3,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.all(50),
                    child: Image.asset(
                      'assets/paymentTick.png',
                      fit: BoxFit.fill,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(255, 202, 40, 1)),
                    width: MediaQuery.of(context).size.width / 2.3,
                    height: MediaQuery.of(context).size.width / 2.3,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Text('Total: Rs 3,000',
              style: GoogleFonts.roboto(
                  fontSize: 18, fontWeight: FontWeight.w500)),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              height: MediaQuery.of(context).size.height / 5,
              width: double.infinity,
              color: Colors.grey[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Full Chicken',
                          style: GoogleFonts.roboto(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                      Text('Order ID: OWRE2312ZUYWBQ',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(129, 129, 129, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w300))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Full Chicken',
                          style: GoogleFonts.roboto(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                      Text('Order ID: OWRE2312ZUYWBQ',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(129, 129, 129, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w300))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Full Chicken',
                          style: GoogleFonts.roboto(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                      Text('Order ID: OWRE2312ZUYWBQ',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(129, 129, 129, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w300))
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RedButtonNavigator(
                  textName: 'Go Home',
                  navigate: HomePage(),
                  width: MediaQuery.of(context).size.width / 5.5,
                ),
                RedButtonNavigator(
                  textName: 'Call Us',
                  navigate: DialogBoxCallSupport(),
                  width: MediaQuery.of(context).size.width / 5.5,
                ),
                RedButtonNavigator(
                  textName: 'My Orders',
                  navigate: MyOrder(),
                  width: MediaQuery.of(context).size.width / 5.5,
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
