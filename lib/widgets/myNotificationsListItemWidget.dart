import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'package:ucliq/models/myNotificationsListModel.dart';

class MyNotificationsListItem extends StatelessWidget {
  final MyNotificationsListItemClass myNotificationsListItemClass;
  MyNotificationsListItem({
    required this.myNotificationsListItemClass,
    Key? key,
  }) : super(key: key);
  var dateFormat = DateFormat.yMMMd().add_jm();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      myNotificationsListItemClass.img!,
                      width: MediaQuery.of(context).size.width / 8,
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Your Oder is Been Placed',
                          style: GoogleFonts.roboto(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          myNotificationsListItemClass.orderDesp!,
                          maxLines: 3,
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(57, 57, 57, 1),
                              fontSize: 10,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '${dateFormat.format(myNotificationsListItemClass.date!)}',
                          style: GoogleFonts.roboto(
                              color: Color.fromRGBO(129, 129, 129, 1),
                              fontSize: 10,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Icon(Icons.arrow_forward_ios),
                    ))
                  ],
                ),
              )),
        ),
        Divider(
          height: 0,
          thickness: 2,
        )
      ],
    );
  }
}
