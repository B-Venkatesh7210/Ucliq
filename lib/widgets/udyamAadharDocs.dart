import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UdyamAadharDocs extends StatelessWidget {
  final String? textName;
  bool? isRed = true;
  final String imageName;
  UdyamAadharDocs({
    this.textName,
    required this.imageName,
    this.isRed = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Container(
            height: 160,
            width: 109,
          ),
          Container(
            child: Image.asset(imageName, width: 99, height: 135),
            height: 151,
            width: 109,
            decoration: BoxDecoration(
                color: Color.fromRGBO(236, 235, 235, 1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                    color: isRed!
                        ? Color.fromRGBO(215, 59, 70, 1)
                        : Color.fromRGBO(87, 183, 147, 1))),
          ),
          isRed!
              ? Positioned.fill(
                  child: Align(
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
                  ),
                )
              : Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
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
                    ),
                  ),
                )
        ]),
        SizedBox(height: 20),
        textName == null
            ? Container()
            : Text(textName!,
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.w500))
      ],
    );
  }
}
