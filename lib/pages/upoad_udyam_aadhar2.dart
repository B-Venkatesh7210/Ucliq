import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/home_parent.dart';
import 'package:ucliq/widgets/redButtonNavigator.dart';

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
                  child: RedButtonNavigator(
                      height: 50,
                      textName: 'Continue to Home',
                      navigate: HomeParent()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
