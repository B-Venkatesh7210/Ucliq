import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/dashboard.dart';
import 'package:ucliq/widgets/dialogBoxCallSupport.dart';
import 'package:ucliq/widgets/greenContainerListItemWidget.dart';
import 'kyc_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> key = GlobalKey();
  TextEditingController tec4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      drawer: Dashboard(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        key.currentState!.openDrawer();
                      },
                      icon: Icon(Icons.menu)),
                  ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffD73B46))),
                      onPressed: () {
                        showDialog(
                        
                            context: context,
                            builder: (context) => DialogBoxCallSupport());
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/call_icon.png',
                            height: 16,
                            width: 16,
                          ),
                          Text('Call Support'),
                        ],
                      )),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/shop_cart.png'),
                    color: Colors.amberAccent,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(fontSize: 20),
                  keyboardType: TextInputType.text,
                  controller: tec4,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    fillColor: Colors.grey[250],
                    filled: true,
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                      Color.fromRGBO(215, 59, 70, 1),
                      Color.fromRGBO(255, 229, 0, 1)
                    ])),
                width: double.infinity,
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset('assets/ucliq_logo.png',
                                      width: 150),
                                  SizedBox(height: 10),
                                  Text('WELCOME \nALL SHOP OWNERS',
                                      style: GoogleFonts.roboto(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                          color:
                                              Color.fromRGBO(250, 250, 250, 1)))
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                'assets/home_pageimg.png',
                                width: 10,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(25))),
                          padding: EdgeInsets.all(15),
                          width: double.infinity,
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Image.asset('assets/cart.png', width: 20),
                                      SizedBox(height: 10),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: "10 lakh+ ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 10,
                                                color: Color.fromRGBO(
                                                    215, 59, 70, 1))),
                                        TextSpan(
                                            text: "Retailers",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 10,
                                                color: Colors.black))
                                      ]))
                                    ],
                                  )),
                              VerticalDivider(
                                width: 4,
                                thickness: 1,
                                color: Colors.amberAccent,
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Image.asset('assets/wallet.png',
                                          width: 20),
                                      SizedBox(height: 10),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: "Credit upto ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 10,
                                                color: Colors.black)),
                                        TextSpan(
                                            text: "5 lakh",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 10,
                                                color: Color.fromRGBO(
                                                    215, 59, 70, 1))),
                                      ]))
                                    ],
                                  )),
                              VerticalDivider(
                                width: 4,
                                thickness: 1,
                                color: Colors.amberAccent,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Image.asset(
                                            'assets/products.png',
                                            width: 26),
                                      ),
                                      SizedBox(height: 10),
                                      RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "Products from ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 10,
                                                    color: Colors.black)),
                                            TextSpan(
                                                text: "20K sellers",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 10,
                                                    color: Color.fromRGBO(
                                                        215, 59, 70, 1))),
                                          ]))
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 40, left: 10, right: 10, bottom: 10),
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Complete Shop KYC',
                        style: GoogleFonts.roboto(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(57, 57, 57, 1))),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('You must complete KYC to:',
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(129, 129, 129, 1))),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Center(
                                        child: Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: Image.asset('assets/rupee.png',
                                          width: 10),
                                    )),
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  SizedBox(width: 8),
                                  Text('Check product prices',
                                      style: GoogleFonts.roboto(
                                          color:
                                              Color.fromRGBO(129, 129, 129, 1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Center(
                                        child: Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: Image.asset('assets/exchange.png',
                                          width: 10),
                                    )),
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  SizedBox(width: 8),
                                  Text('Make purchase on ucliq',
                                      style: GoogleFonts.roboto(
                                          color:
                                              Color.fromRGBO(129, 129, 129, 1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                              SizedBox(height: 30),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: LinearGradient(colors: [
                                      Color.fromRGBO(215, 59, 70, 1),
                                      Color.fromRGBO(255, 229, 0, 1)
                                    ])),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        elevation: MaterialStateProperty.all(0),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.transparent),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        15)))),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => KycPage()));
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('Start KYC'),
                                        Icon(Icons.arrow_right)
                                      ],
                                    )),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Image.asset('assets/yellow_bg.png'),
                              Image.asset('assets/home_img.png')
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  color: Color.fromRGBO(217, 234, 209, 1),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GreenContainerListItem(
                            img: 'assets/homeImg1.png',
                            height: 6,
                            width: 4,
                            color: Colors.white,
                          ),
                          GreenContainerListItem(
                            img: 'assets/homeImg2.png',
                            height: 6,
                            width: 4,
                            color: Colors.white,
                          ),
                          GreenContainerListItem(
                            img: 'assets/homeImg3.png',
                            height: 6,
                            width: 4,
                            color: Colors.white,
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GreenContainerListItem(
                            img: 'assets/homeImg3.png',
                            height: 6,
                            width: 4,
                            color: Colors.white,
                          ),
                          GreenContainerListItem(
                            img: 'assets/homeImg5.png',
                            height: 6,
                            width: 4,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  )),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20),
                color: Colors.grey[300],
                child: Column(
                  children: [
                    Text(
                      'To see wholesale prices & buy products',
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(109, 109, 109, 1),
                          fontSize: 9,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'COMPLETE SHOP’S KYC',
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(215, 59, 70, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'KYC is needed so that only shop owners like you can see\nwholesale prices and not your shop’s customers',
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(109, 109, 109, 1),
                          fontSize: 9,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: MediaQuery.of(context).size.height / 20,
                      width: MediaQuery.of(context).size.width / 3,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(215, 59, 70, 1),
                              Color.fromRGBO(255, 229, 0, 1)
                            ])),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => KycPage()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Upload KYC'),
                                Icon(Icons.arrow_right)
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Divider(
                    height: 0,
                    thickness: 2,
                    color: Color.fromRGBO(215, 59, 70, 1),
                  ),
                  Container(
                    color: Color.fromRGBO(215, 59, 70, 1),
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Center(
                      child: Text(
                        'TOP SELLING PRODUCTS',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GreenContainerListItem(
                            img: 'assets/homeImg6.png',
                            color: Color.fromRGBO(217, 234, 209, 1),
                            height: 4,
                            width: 2.5),
                        GreenContainerListItem(
                            img: 'assets/homeImg1.png',
                            color: Color.fromRGBO(217, 234, 209, 1),
                            height: 4,
                            width: 2.5),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GreenContainerListItem(
                            img: 'assets/homeImg2.png',
                            color: Color.fromRGBO(217, 234, 209, 1),
                            height: 4,
                            width: 2.5),
                        GreenContainerListItem(
                            img: 'assets/homeImg3.png',
                            color: Color.fromRGBO(217, 234, 209, 1),
                            height: 4,
                            width: 2.5),
                      ],
                    )
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Divider(
                    height: 0,
                    thickness: 2,
                    color: Color.fromRGBO(215, 59, 70, 1),
                  ),
                  Container(
                    color: Color.fromRGBO(215, 59, 70, 1),
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Center(
                      child: Text(
                        'BEST SELLING PRODUCTS',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GreenContainerListItem(
                            img: 'assets/homeImg6.png',
                            color: Color.fromRGBO(217, 234, 209, 1),
                            height: 4,
                            width: 2.5),
                        GreenContainerListItem(
                            img: 'assets/homeImg1.png',
                            color: Color.fromRGBO(217, 234, 209, 1),
                            height: 4,
                            width: 2.5),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GreenContainerListItem(
                            img: 'assets/homeImg2.png',
                            color: Color.fromRGBO(217, 234, 209, 1),
                            height: 4,
                            width: 2.5),
                        GreenContainerListItem(
                            img: 'assets/homeImg3.png',
                            color: Color.fromRGBO(217, 234, 209, 1),
                            height: 4,
                            width: 2.5),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5.5,
                width: double.infinity,
                color: Color.fromRGBO(178, 72, 78, 1),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Text(
                        'BUY UCLIQ FULFILLED PRODUCTS',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(children: [
                          Image.asset('assets/triangle1.png', width: 32),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, top: 8),
                            child:
                                Image.asset('assets/triangle2.png', width: 32),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child:
                                Image.asset('assets/triangle3.png', width: 41),
                          )
                        ]),
                        Stack(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 19.5, top: 25),
                            child: Image.asset(
                              'assets/polygon.png',
                              width: 115,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => KycPage()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 230, 0, 1),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          topLeft: Radius.circular(15))),
                                  width:
                                      MediaQuery.of(context).size.width / 3.45,
                                  height: 30,
                                  child: Center(
                                    child: Text('UPLOAD KYC',
                                        style: GoogleFonts.roboto(
                                            color: Colors.black,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 60, left: 36),
                            child: InkWell(
                              onTap: () {
                                print('tapped');
                              },
                              child: Container(
                                child: Center(
                                  child: Text('BUY NOW',
                                      style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500)),
                                ),
                                color: Color.fromRGBO(57, 57, 57, 1),
                                height: 24,
                                width: 63,
                              ),
                            ),
                          )
                        ]),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Divider(
                    height: 0,
                    thickness: 2,
                    color: Color.fromRGBO(215, 59, 70, 1),
                  ),
                  Container(
                    color: Color.fromRGBO(215, 59, 70, 1),
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Center(
                      child: Text(
                        'BEST SELLING PRODUCTS',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GreenContainerListItem(
                            height: 8,
                            width: 6,
                            color: Color.fromRGBO(160, 97, 106, 1)),
                        GreenContainerListItem(
                            height: 8,
                            width: 6,
                            color: Color.fromRGBO(160, 97, 106, 1)),
                        GreenContainerListItem(
                            height: 8,
                            width: 6,
                            color: Color.fromRGBO(160, 97, 106, 1)),
                        GreenContainerListItem(
                            height: 8,
                            width: 6,
                            color: Color.fromRGBO(160, 97, 106, 1))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
