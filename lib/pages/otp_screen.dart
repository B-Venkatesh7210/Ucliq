import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/otp_screen2.dart';
import 'package:ucliq/widgets/redButtonNavigator.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController tec = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/otp_screenimg.png',
                        width: 200,
                      ),
                    ),
                    Text('Enter Mobile Number',
                        style: GoogleFonts.roboto(
                            fontSize: 25, fontWeight: FontWeight.w700)),
                    SizedBox(height: 20),
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                            "Enter your 10 - digit mobile number to receive the verification code",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(129, 129, 129, 1))),
                      ),
                    ),
                    SizedBox(height: 45),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Mobile Number',
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(129, 129, 129, 1))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        keyboardType: TextInputType.number,
                        controller: tec,
                        decoration: InputDecoration(
                            prefixIcon: SizedBox(
                                child: Center(
                              child:
                                  Text("+91", style: TextStyle(fontSize: 18)),
                              widthFactor: 0,
                            )),

                            // prefixText: "+91|",
                            prefixStyle: TextStyle(color: Colors.black),
                            hintText: "9874563210",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(129, 129, 129, 0.25)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(129, 129, 129, 1),
                                    width: 2))),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: RedButtonNavigator(
                      textName: 'Get Verification Code',
                      navigate: OtpScreen2(),
                      width: double.infinity,
                      height: 50,
                    ),
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
