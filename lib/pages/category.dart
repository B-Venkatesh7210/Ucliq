import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/dashboard.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final GlobalKey<ScaffoldState> key = GlobalKey();
  TextEditingController tec4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      drawer: Dashboard(),
      body: SafeArea(
        child: Container(
          height: 110,
          color: Color.fromRGBO(215, 59, 70, 1),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          key.currentState!.openDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    SizedBox(width: 5),
                    Text('Categories',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    SizedBox(width: 190),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart, color: Colors.white),
                      color: Colors.amberAccent,
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: tec4,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: Colors.black,
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(129, 129, 129, 1),
                                width: 2))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(100),
      //   child: AppBar(
      //     leading: IconButton(
      //         onPressed: () {
      //           key.currentState!.openDrawer();
      //         },
      //         icon: Icon(Icons.menu)),
      //     title: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Text('Categories',
      //             style: GoogleFonts.roboto(
      //                 color: Colors.white,
      //                 fontSize: 18,
      //                 fontWeight: FontWeight.w500)),
      //         SizedBox(height: 5),
      //         TextField(
      //           keyboardType: TextInputType.text,
      //           controller: tec4,
      //           decoration: InputDecoration(
      //               prefixIcon: Icon(
      //                 Icons.search_outlined,
      //                 color: Colors.black,
      //               ),
      //               hintText: "Search",
      //               hintStyle: TextStyle(color: Colors.grey),
      //               border: OutlineInputBorder(
      //                   borderSide: BorderSide(
      //                       color: Color.fromRGBO(129, 129, 129, 1),
      //                       width: 2))),
      //         ),
      //       ],
      //     ),
      //     actions: [
      //       IconButton(
      //         onPressed: () {},
      //         icon: Image.asset('assets/shop_cart.png'),
      //         color: Colors.white,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
