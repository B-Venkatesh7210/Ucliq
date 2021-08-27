import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/models/addressListItemModel.dart';

class AddressListItem extends StatefulWidget {
  final AddressListItemClass addressListItemClass;
  Function isSelectedFunction;
  int index;
  bool? isSelected = false;
  AddressListItem({
    required this.isSelectedFunction,
    required this.index,
    this.isSelected,
    required this.addressListItemClass,
    Key? key,
  }) : super(key: key);

  @override
  _AddressListItemState createState() => _AddressListItemState();
}

class _AddressListItemState extends State<AddressListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    widget.isSelectedFunction(widget.index);
                  },
                  child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(215, 59, 70, 1), width: 2),
                          shape: BoxShape.circle),
                      child: widget.isSelected!
                          ? Center(
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(215, 59, 70, 1)),
                              ),
                            )
                          : Container()),
                ),
                SizedBox(width: 10),
                Text(
                  widget.addressListItemClass.addressType!,
                  style: GoogleFonts.roboto(
                      color: Color.fromRGBO(215, 59, 70, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'N/A',
                    style: GoogleFonts.roboto(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.addressListItemClass.address!,
                    style: GoogleFonts.roboto(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Material(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(
                              color: Color.fromRGBO(215, 59, 70, 1))),
                      onPressed: () {},
                      child: Text(
                        'Edit',
                        style: GoogleFonts.roboto(
                            color: Color.fromRGBO(215, 59, 70, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Material(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(
                              color: Color.fromRGBO(255, 202, 40, 1))),
                      onPressed: () {},
                      child: Text(
                        'Delete',
                        style: GoogleFonts.roboto(
                            color: Color.fromRGBO(255, 202, 40, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
