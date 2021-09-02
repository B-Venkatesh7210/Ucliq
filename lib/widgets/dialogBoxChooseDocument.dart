import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogBoxChooseDocument extends StatefulWidget {
  const DialogBoxChooseDocument({Key? key}) : super(key: key);

  @override
  _DialogBoxChooseDocumentState createState() =>
      _DialogBoxChooseDocumentState();
}

class _DialogBoxChooseDocumentState extends State<DialogBoxChooseDocument> {
  int chooseDocument=1;
  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      height: MediaQuery.of(context).size.height / 3.5,
      padding: EdgeInsets.all(12),
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Choose Document',
              style: GoogleFonts.roboto(
                  color: Color.fromRGBO(99, 99, 99, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
          Row(children: [
            Radio(
                value: 1,
                groupValue: chooseDocument,
                onChanged: (value1) {
                  chooseDocument = value1 as int;
                  setState(() {});
                }),
            Text('Bill Book',
                style: GoogleFonts.roboto(
                    fontSize: 12, fontWeight: FontWeight.w500)),
          ]),
          Divider(thickness: 2, height: 0),
          Row(children: [
            Radio(
                value: 2,
                groupValue: chooseDocument,
                onChanged: (value1) {
                  chooseDocument = value1 as int;
                  setState(() {});
                }),
            Text('Visiting Card',
                style: GoogleFonts.roboto(
                    fontSize: 12, fontWeight: FontWeight.w500)),
          ]),
          Divider(thickness: 2, height: 0),
          Row(children: [
            Radio(
                value: 3,
                groupValue: chooseDocument,
                onChanged: (value1) {
                  chooseDocument = value1 as int;
                  setState(() {});
                }),
            Text('Shop Photo',
                style: GoogleFonts.roboto(
                    fontSize: 12, fontWeight: FontWeight.w500)),
          ]),
          Divider(thickness: 2, height: 0),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text('CANCEL',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w700)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text('DONE',
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(215, 59, 70, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
