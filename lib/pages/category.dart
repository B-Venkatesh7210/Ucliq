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
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 7,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    elevation: 5,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromRGBO(235, 180, 183, 1),
                          ),
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height / 8,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text('Meat',
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500)),
                              ),
                              InkWell(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 36,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 0),
                                        child: Image.asset(
                                            'assets/categoryTabBg.png'),
                                      ),
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Image.asset(
                                              'assets/categoryMeat.png',
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  6,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          height: 200,
                          width: double.infinity,
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 5),
                  Container(
                    color: Colors.red,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 8,
                  ),
                  SizedBox(height: 5),
                  Container(
                    color: Colors.red,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 8,
                  ),
                  SizedBox(height: 5),
                  // Container(
                  //   color: Colors.red,
                  //   width: double.infinity,
                  //   height: MediaQuery.of(context).size.height / 8,
                  // ),
                  // SizedBox(height: 5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
