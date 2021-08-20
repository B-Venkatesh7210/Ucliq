import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/business_proof.dart';
import 'package:ucliq/widgets/redButtonNavigator.dart';

class KycPage extends StatefulWidget {
  const KycPage({Key? key}) : super(key: key);

  @override
  _KycPageState createState() => _KycPageState();
}

class _KycPageState extends State<KycPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  TextButton.icon(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Color.fromRGBO(255, 202, 40, 1),
                                      width: 2),
                                  borderRadius: BorderRadius.circular(25)))),
                      onPressed: () {},
                      icon: Icon(Icons.call,
                          color: Color.fromRGBO(255, 202, 40, 1)),
                      label: Text('HELP',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(255, 202, 40, 1),
                              fontSize: 10,
                              fontWeight: FontWeight.w700)))
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Complete Shop’s KYC',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700))
                ],
              ),
            ),
            SizedBox(height: 20),
            Divider(
              height: 5,
              thickness: 5,
              color: Color(0xffEEEEEE),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Electrical',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(57, 57, 57, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w400)),
                      Text('change',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(255, 202, 40, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                  Image.asset('assets/energy.png', width: 30)
                ],
              ),
            ),
            SizedBox(height: 20),
            Divider(
              height: 5,
              thickness: 5,
              color: Color(0xffEEEEEE),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset('assets/check.png', width: 10),
                    )),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  Image.asset('assets/google_business.png',
                      width: 51, height: 45),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Step 1',
                          style: GoogleFonts.roboto(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                      Text('Business Proof',
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffD73B46))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BusinessProof()));
                      },
                      child: Container(
                          width: 22,
                          height: 11,
                          child: Center(
                            child: Text('Add',
                                style: GoogleFonts.roboto(
                                    fontSize: 8, fontWeight: FontWeight.w500)),
                          ))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
