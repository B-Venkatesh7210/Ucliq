import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/otp_screen.dart';

class DilaogBoxWelcomeScreen extends StatefulWidget {
  const DilaogBoxWelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _DilaogBoxWelcomeScreenState createState() => _DilaogBoxWelcomeScreenState();
}

class _DilaogBoxWelcomeScreenState extends State<DilaogBoxWelcomeScreen> {
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
