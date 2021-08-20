import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/upload_udyam_aadhar.dart';
import 'package:ucliq/widgets/redButtonNavigator.dart';
import 'package:ucliq/widgets/udyamAadharDocs.dart';

class UdyamAadhar extends StatefulWidget {
  const UdyamAadhar({Key? key}) : super(key: key);

  @override
  _UdyamAadharState createState() => _UdyamAadharState();
}

class _UdyamAadharState extends State<UdyamAadhar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Expanded(
        flex: 3,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios))
                      ])),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text('Upload Udyam Aadhar',
                    style: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.w700)),
              ),
              SizedBox(height: 15),
              Center(
                child: Container(
                  child: Icon(
                    Icons.add,
                    color: Colors.grey,
                    size: 60,
                  ),
                  width: 151,
                  height: 199,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey),
                      color: Colors.grey[100]),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Important Note: ',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                  TextSpan(
                      text:
                          'Expired documents will not be accepted, check expiry date before uploading the document.',
                      style: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                ])),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: RedButtonNavigator(
                    width: double.infinity,
                    height: 50,
                    textName: 'Upload',
                    navigate: UploadUdyamAadhar()),
              ),
            ],
          ),
        ),
      ),
      Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Color.fromRGBO(236, 235, 235, 1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Text('Wrong Documents',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500)),
                ),
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
                              textName: 'Invoice',
                              imageName: 'assets/row_img1.png'),
                          SizedBox(width: 20),
                          UdyamAadharDocs(
                              textName: 'Selfies',
                              imageName: 'assets/row_img2.png'),
                          SizedBox(width: 20),
                          UdyamAadharDocs(
                              textName: 'Personal Id',
                              imageName: 'assets/row_img3.png'),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ))
    ])));
  }
}
