import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/udyam_aadhar.dart';

class BusinessProof extends StatefulWidget {
  const BusinessProof({Key? key}) : super(key: key);

  @override
  _BusinessProofState createState() => _BusinessProofState();
}

class _BusinessProofState extends State<BusinessProof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                TextButton.icon(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color.fromRGBO(255, 202, 40, 1),
                                width: 2),
                            borderRadius: BorderRadius.circular(25)))),
                    onPressed: () {},
                    icon: Icon(Icons.call,
                        color: Color.fromRGBO(255, 202, 40, 1)),
                    label: Text('HELP',
                        style: GoogleFonts.roboto(
                            color: Color.fromRGBO(255, 202, 40, 1),
                            fontSize: 10,
                            fontWeight: FontWeight.w700)))
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Business Proof',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700))
              ],
            ),
          ),
          SizedBox(height: 20),
          Divider(
            height: 5,
            thickness: 5,
            color: Color(0xffEEEEEE),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Upload ',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                  TextSpan(
                      text: 'Atleast One ',
                      style: GoogleFonts.roboto(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                  TextSpan(
                      text: 'Document ',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                ]))
              ],
            ),
          ),
          SizedBox(height: 1),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('GST Cetificate',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
          ),
          SizedBox(height: 1),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Udyam AAdhar',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UdyamAadhar()));
                    },
                    icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
          ),
          SizedBox(height: 1),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Shop & Establish License',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
          ),
          SizedBox(height: 1),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Trade Certificate/License',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
          ),
          SizedBox(height: 1),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('FSSAI Registraion',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
          ),
          SizedBox(height: 1),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Drug Registration',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
          ),
          SizedBox(height: 1),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Drug License',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
          ),
          SizedBox(height: 1),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Current',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
          ),
          SizedBox(height: 1),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Accout Cheque',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
          ),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
        ],
      )),
    );
  }
}
