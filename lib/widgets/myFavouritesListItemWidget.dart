import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/models/myFavouritesListModel.dart';

class MyFavouritesListItem extends StatelessWidget {
  final MyFavouritesListItemClass myFavouritesListItemClass;
   MyFavouritesListItem({
     required this.myFavouritesListItemClass,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: MediaQuery.of(context).size.height / 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 2,
                  child: Image.asset(
                    myFavouritesListItemClass.favImg!,
                  )),
              Expanded(
                flex: 3,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        myFavouritesListItemClass.itemName!,
                        style: GoogleFonts.roboto(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 5),
                      Text(
                        myFavouritesListItemClass.itemDesp!,
                        style: GoogleFonts.roboto(
                            color: Color.fromRGBO(129, 129, 129, 1),
                            fontSize: 10,
                            fontWeight: FontWeight.w300),
                      ),
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
                      Text(
                        'Price: Rs.${myFavouritesListItemClass.itemPrice}',
                        style: GoogleFonts.roboto(
                            color: Color.fromRGBO(215, 59, 70, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'SOLD BY: ${myFavouritesListItemClass.shopName}',
                        style: GoogleFonts.roboto(
                            color: Color.fromRGBO(57, 57, 57, 1),
                            fontSize: 9,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Divider(
          height: 0,
          thickness: 2,
          color: Colors.grey,
        )
      ],
    );
  }
}
