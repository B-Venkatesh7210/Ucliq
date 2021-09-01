import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogBoxCallSupport extends StatelessWidget {
  const DialogBoxCallSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.18),
        child: Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.height / 5,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              alignment: Alignment.topCenter,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                children: [
                  Text('Talk To our Customer Care',
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.w500)),
                  Divider(
                    height: 10,
                    thickness: 2,
                    color: Colors.grey[300],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Material(
                          child: InkWell(
                            onTap: () {
                              print('tapped');
                            },
                            child: Container(
                              padding: EdgeInsets.all(4),
                              child: Image.asset('assets/whatsappCall.png'),
                              width: 44,
                              height: 44,
                              color: Color.fromRGBO(243, 243, 243, 1),
                            ),
                          ),
                        ),
                        Material(
                          child: InkWell(
                            onTap: () {
                              print('tapped');
                            },
                            child: Container(
                              padding: EdgeInsets.all(4),
                              child: Image.asset('assets/normalCall.png'),
                              width: 44,
                              height: 44,
                              color: Color.fromRGBO(243, 243, 243, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('WhatsApp',
                            style: GoogleFonts.roboto(
                                fontSize: 12, fontWeight: FontWeight.w400)),
                        Text('Call Us',
                            style: GoogleFonts.roboto(
                                fontSize: 12, fontWeight: FontWeight.w400))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
