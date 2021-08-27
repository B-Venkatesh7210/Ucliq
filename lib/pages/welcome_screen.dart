import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/otp_screen.dart';
import 'package:ucliq/widgets/dialogBoxWelcomeScreen.dart';

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
                                return DilaogBoxWelcomeScreen();
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

