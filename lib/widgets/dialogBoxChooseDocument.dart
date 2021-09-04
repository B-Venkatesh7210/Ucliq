import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogBoxChooseDocument extends StatefulWidget {
  final int index;
  const DialogBoxChooseDocument({required this.index, Key? key})
      : super(key: key);

  @override
  _DialogBoxChooseDocumentState createState() =>
      _DialogBoxChooseDocumentState();
}

class _DialogBoxChooseDocumentState extends State<DialogBoxChooseDocument> {
  int? chooseDocument;
  setChooseDocument() {
    chooseDocument = widget.index;
    setState(() {});
  }

  @override
  void initState() {
    setChooseDocument();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      height: MediaQuery.of(context).size.height / 3.5,
      padding: EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 0),
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
                value: 0,
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
                value: 1,
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
                value: 2,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(70, 35))),
                onPressed: () {
                  Navigator.pop(context, widget.index);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('CANCEL',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w700)),
                ),
              ),
              TextButton(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(70, 35))),
                onPressed: () {
                  Navigator.pop(context, chooseDocument);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('DONE',
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(215, 59, 70, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
