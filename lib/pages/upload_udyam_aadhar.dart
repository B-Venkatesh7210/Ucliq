import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/upoad_udyam_aadhar2.dart';
import 'package:ucliq/widgets/redButtonNavigator.dart';
import 'package:ucliq/widgets/udyamAadharDocs.dart';

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
                    UdyamAadharDocs(
                        imageName: 'assets/row_img1.png', isRed: false),
                    SizedBox(width: 20),
                    UdyamAadharDocs(imageName: 'assets/row_img2.png'),
                    SizedBox(width: 20),
                    UdyamAadharDocs(imageName: 'assets/row_img3.png'),
                    SizedBox(width: 20),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 70),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
              child: DottedBorder(
                strokeWidth: 1,
                dashPattern: [6, 3],
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
                        child: RedButtonNavigator(
                            height: 50,
                            textName: 'Upload',
                            navigate: UploadUdyamAadhar2()),
                        // child: ElevatedButton(
                        //     style: ButtonStyle(
                        //         backgroundColor: MaterialStateProperty.all(
                        //             Color(0xffD73B46))),
                        //     onPressed: () {
                        //       Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (context) =>
                        //                   UploadUdyamAadhar2()));
                        //     },
                        //     child: Container(
                        //         height: 50,
                        //         child: Center(
                        //           child: Text('Upload',
                        //               style: GoogleFonts.roboto()),
                        //         ))),
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
            ),
          )
        ],
      )),
    );
  }
}
