import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  _TermsAndConditionsState createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Conditions'),
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Terms & Conditions',
                style: GoogleFonts.roboto(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20),
              Text(
                'A long Paragraph',
                maxLines: 50,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
      )),
    );
  }
}