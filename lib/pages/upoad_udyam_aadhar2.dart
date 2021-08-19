import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/home_page.dart';

class UploadUdyamAadhar2 extends StatefulWidget {
  const UploadUdyamAadhar2({Key? key}) : super(key: key);

  @override
  _UploadUdyamAadhar2State createState() => _UploadUdyamAadhar2State();
}

class _UploadUdyamAadhar2State extends State<UploadUdyamAadhar2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 150, 50, 250),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/pages_img.png', width: 149, height: 145),
                SizedBox(height: 50),
                Text('Your Profile is Under verification',
                    style: GoogleFonts.roboto(
                        color: Color.fromRGBO(87, 183, 147, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffD73B46))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Container(
                          height: 50,
                          child: Center(
                            child: Text('Continue to Home',
                                style: GoogleFonts.roboto()),
                          ))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
