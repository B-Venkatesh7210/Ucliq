import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/otp_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/ucliqWS.png',
                        width: 200,
                      ),
                    ),
                    Text('Welcome to Ucliq',
                        style: GoogleFonts.roboto(
                            fontSize: 25, fontWeight: FontWeight.w700)),
                    SizedBox(height: 20),
                    Text(
                      "India's largest B2B trade network",
                      style: GoogleFonts.roboto(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 45),
                    Text('Retailers | Traders | Wholesalers',
                        style: GoogleFonts.roboto(
                            fontSize: 15, fontWeight: FontWeight.w300)),
                    SizedBox(height: 10),
                    Text('Distrubutors | Manufacturses | Brands',
                        style: GoogleFonts.roboto(
                            fontSize: 15, fontWeight: FontWeight.w300)),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xffD73B46))),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return DilaogBox();
                              });
                        },
                        child: Container(
                            width: double.infinity,
                            height: 50,
                            child: Center(
                              child: Text('Get Started',
                                  style: GoogleFonts.roboto()),
                            ))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DilaogBox extends StatefulWidget {
  const DilaogBox({
    Key? key,
  }) : super(key: key);

  @override
  _DilaogBoxState createState() => _DilaogBoxState();
}

class _DilaogBoxState extends State<DilaogBox> {
  bool? checkBoxValue = false;
  bool? checkBoxValue2 = false;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Terms and Conditions',
                    style: GoogleFonts.roboto(
                        fontSize: 19, fontWeight: FontWeight.w500)),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 16,
                        width: 16,
                        child: Checkbox(
                            activeColor: Color.fromRGBO(255, 230, 0, 1),
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.all(
                                Color.fromRGBO(255, 230, 0, 1)),
                            value: checkBoxValue,
                            onChanged: (value) {
                              setState(() {
                                checkBoxValue = value;
                              });
                            }),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Terms of Use',
                              maxLines: 1,
                              style: GoogleFonts.roboto(
                                  fontSize: 14, fontWeight: FontWeight.w500)),
                          SizedBox(height: 10),
                          Text(
                              'By  clicking ‘Accept’, you agree to \n ucliq Terms of Use and Privacy Policy.',
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(129, 129, 129, 1)))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 16,
                        width: 16,
                        child: Checkbox(
                            activeColor: Color.fromRGBO(255, 230, 0, 1),
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.all(
                                Color.fromRGBO(255, 230, 0, 1)),
                            value: checkBoxValue2,
                            onChanged: (value) {
                              setState(() {
                                checkBoxValue2 = value;
                              });
                            }),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Terms and conditions for Logistics Services and payment Services',
                              style: GoogleFonts.roboto(
                                  fontSize: 14, fontWeight: FontWeight.w500)),
                          SizedBox(height: 10),
                          Text(
                              'By  clicking ‘Accept’, you agree to ucliq Terms of Use and Privacy Policy for availing the Logistics Services and payment Services from Hiveloop Logistics Private Limited',
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(129, 129, 129, 1)))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffD73B46))),
                  onPressed: () {
                    if (checkBoxValue! && checkBoxValue2!) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OtpScreen()));
                    }
                  },
                  child: Container(
                      width: double.infinity,
                      height: 50,
                      child: Center(
                        child: Text('Accept & Countinue',
                            style: GoogleFonts.roboto()),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
