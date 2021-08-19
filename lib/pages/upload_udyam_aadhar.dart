import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/upoad_udyam_aadhar2.dart';

class UploadUdyamAadhar extends StatefulWidget {
  const UploadUdyamAadhar({Key? key}) : super(key: key);

  @override
  _UploadUdyamAadharState createState() => _UploadUdyamAadharState();
}

class _UploadUdyamAadharState extends State<UploadUdyamAadhar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios)),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text('Upload Udyam Aadhar',
                style: GoogleFonts.roboto(
                    fontSize: 18, fontWeight: FontWeight.w700)),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text('Tips on how to click the right photo',
                style: GoogleFonts.roboto(
                    fontSize: 12, fontWeight: FontWeight.w400)),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Stack(children: [
                          Container(
                            child: Image.asset('assets/row_img1.png',
                                width: 99, height: 135),
                            height: 151,
                            width: 109,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(236, 235, 235, 1),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: Color.fromRGBO(87, 183, 147, 1))),
                          ),
                          Container(
                            child: Center(
                                child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 12,
                            )),
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(87, 183, 147, 1)),
                          )
                        ]),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Stack(children: [
                          Container(
                            child: Image.asset('assets/row_img2.png',
                                width: 99, height: 135),
                            height: 151,
                            width: 109,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(236, 235, 235, 1),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: Color.fromRGBO(215, 59, 70, 1))),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              child: Center(
                                child: Text('X',
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                              ),
                              height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.red),
                            ),
                          )
                        ]),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Stack(children: [
                          Container(
                            child: Image.asset('assets/row_img3.png',
                                width: 99, height: 135),
                            height: 151,
                            width: 109,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(236, 235, 235, 1),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: Color.fromRGBO(215, 59, 70, 1))),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              child: Center(
                                child: Text('X',
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                              ),
                              height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.red),
                            ),
                          )
                        ]),
                      ],
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 70),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: EdgeInsets.fromLTRB(50, 80, 50, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/camera.png',
                        width: 65,
                        height: 48,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Using Camera, Gallery or Files',
                        style: GoogleFonts.roboto(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xffD73B46))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        UploadUdyamAadhar2()));
                          },
                          child: Container(
                              height: 50,
                              child: Center(
                                child:
                                    Text('Upload', style: GoogleFonts.roboto()),
                              ))),
                    ),
                  ],
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(229, 240, 248, 1),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
