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
          BusinessProofListItem(textName: 'GST Certificate'),
          SizedBox(height: 1),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
          BusinessProofListItem(
              textName: 'Udyam AAdhar', navigate: UdyamAadhar()),
          SizedBox(height: 1),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
          BusinessProofListItem(textName: 'Shop & Establish License'),
          SizedBox(height: 1),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
          BusinessProofListItem(textName: 'Trade Certificate/License'),
          SizedBox(height: 1),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
          BusinessProofListItem(textName: 'FSSAI Registraion'),
          SizedBox(height: 1),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
          BusinessProofListItem(textName: 'Drug Registration'),
          SizedBox(height: 1),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
          BusinessProofListItem(textName: 'Drug License'),
          SizedBox(height: 1),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
          BusinessProofListItem(textName: 'Current'),
          SizedBox(height: 1),
          Divider(
            height: 5,
            thickness: 2,
            color: Color(0xffEEEEEE),
          ),
          BusinessProofListItem(textName: 'Accout Cheque'),
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

class BusinessProofListItem extends StatelessWidget {
  final String textName;
  final Widget? navigate;
  BusinessProofListItem({
    required this.textName,
    this.navigate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (navigate != null)
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => navigate!));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(textName,
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
