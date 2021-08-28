import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/models/chickenListItemModel.dart';

class ChickenListItem extends StatefulWidget {
  ChickenListItemClass chickenListItemClass;
  ChickenListItem({
    required this.chickenListItemClass,
    Key? key,
  }) : super(key: key);

  @override
  _ChickenListItemState createState() => _ChickenListItemState();
}

class _ChickenListItemState extends State<ChickenListItem> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            widget.chickenListItemClass.chickenImg!,
            width: MediaQuery.of(context).size.width / 3,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.chickenListItemClass.chickenName!,
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w500)),
                SizedBox(height: 5),
                Text(widget.chickenListItemClass.chickenDesp!,
                    style: GoogleFonts.roboto(
                        color: Color.fromRGBO(129, 129, 129, 1),
                        fontSize: 10,
                        fontWeight: FontWeight.w300)),
                SizedBox(height: 5),
                Row(
                  children: [
                    Image.asset(
                      'assets/myFavStar.png',
                      width: 15,
                    ),
                    Image.asset(
                      'assets/myFavStar.png',
                      width: 15,
                    ),
                    Image.asset(
                      'assets/myFavStar.png',
                      width: 15,
                    ),
                    Image.asset(
                      'assets/myFavStar.png',
                      width: 15,
                    ),
                    Image.asset(
                      'assets/myFavStar.png',
                      width: 15,
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text('Price: Rs.${widget.chickenListItemClass.chickenPrice}',
                    style: GoogleFonts.roboto(
                        color: Color.fromRGBO(215, 59, 70, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 5),
                Text('SOLD BY: ${widget.chickenListItemClass.shopName}',
                    style: GoogleFonts.roboto(
                        fontSize: 9, fontWeight: FontWeight.w500)),
                SizedBox(height: 10),
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width / 4,
                  child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Add',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(255, 202, 40, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w500))),
                )
              ],
            ),
          ),
          InkWell(
              onTap: () {
                setState(() {
                  if (isTapped == false) {
                    isTapped = true;
                  } else {
                    isTapped = false;
                  }
                });
              },
              child: isTapped == true
                  ? Icon(
                      Icons.favorite,
                      color: Color.fromRGBO(215, 59, 70, 1),
                      size: 36,
                    )
                  : Icon(
                      Icons.favorite,
                      color: Colors.grey,
                      size: 36,
                    ))
        ],
      ),
    );
  }
}
