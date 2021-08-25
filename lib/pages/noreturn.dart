import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoReturn extends StatefulWidget {
  const NoReturn({Key? key}) : super(key: key);

  @override
  _NoReturnState createState() => _NoReturnState();
}

class _NoReturnState extends State<NoReturn> {
  TextEditingController searchInNoReturns = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Track Order'),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {},
                  iconSize: 40,
                ))
          ],
        ),
        body: SafeArea(
            child: Container(
                child: Column(children: [
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    border: Border(right: BorderSide(color: Colors.grey))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: searchInNoReturns,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: Color.fromRGBO(99, 99, 99, 1),
                        size: 30,
                      ),
                      hintText: "Search for Orders",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              child: Row(
                children: [
                  Text(
                    'All \nOrders',
                    style: GoogleFonts.roboto(
                        color: Color.fromRGBO(215, 59, 70, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                    child: Center(
                      child: IconButton(
                          padding: EdgeInsets.all(0),
                          splashRadius: 10,
                          onPressed: () {
                            print('tapped');
                          },
                          icon: Icon(Icons.arrow_drop_down)),
                    ),
                  )
                ],
              ),
            ))
          ]),
          Divider(
            thickness: 2,
            height: 0,
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/noReturn.png',
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'No Returns found',
                    style: GoogleFonts.roboto(
                        color: Color.fromRGBO(99, 99, 99, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          )
        ]))));
  }
}
