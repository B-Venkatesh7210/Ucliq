import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/settings.dart';
import 'package:ucliq/widgets/dashboardItems.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          color: Colors.grey[300],
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              child: Center(
                                child: Text(
                                  'U',
                                  style: TextStyle(
                                      color: Color.fromRGBO(215, 59, 70, 1),
                                      fontSize: 30),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Color.fromRGBO(215, 59, 70, 1),
                                      width: 3)),
                            ),
                            SizedBox(width: 20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Ucliq Shop',
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(66, 66, 66, 1))),
                                SizedBox(height: 12),
                                Text('Andro Mark',
                                    style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(66, 66, 66, 1))),
                                Text('9876543210',
                                    style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(66, 66, 66, 1)))
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 40),
                        DashboardItems(
                          textName: 'My Orders',
                          imgName: 'assets/dbimg1.png',
                        ),
                        DashboardItems(
                          textName: 'Returns and Refunds',
                          imgName: 'assets/dbimg2.png',
                        ),
                        DashboardItems(
                          textName: 'Buy Again',
                          imgName: 'assets/dbimg3.png',
                        ),
                        DashboardItems(
                          textName: 'My Favourites',
                          imgName: 'assets/dbimg4.png',
                        ),
                        DashboardItems(
                          textName: 'Address List',
                          imgName: 'assets/dbimg5.png',
                        ),
                        DashboardItems(
                          textName: 'My Notification',
                          imgName: 'assets/dbimg6.png',
                        ),
                      ],
                    ),
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              SizedBox(height: 12),
              Expanded(
                flex: 2,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Column(
                      children: [
                        DashboardItems(
                            textName: 'Verification / Bank',
                            imgName: 'assets/dbimg7.png'),
                        DashboardItems(
                            textName: 'Sell on Ucliq',
                            imgName: 'assets/dbimg8.png'),
                      ],
                    ),
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              SizedBox(height: 12),
              Expanded(
                flex: 3,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Material(
                          color: Colors.white,
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  Text('Call Us (Support Us)',
                                      style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(57, 57, 57, 1))),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.white,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Settings()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  Text('Settings',
                                      style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(57, 57, 57, 1))),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.white,
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  Text('Sign Out',
                                      style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(57, 57, 57, 1))),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 2),
                        Center(
                          child: Text('VERSION 1.1',
                              style: GoogleFonts.roboto(
                                  fontSize: 10,
                                  letterSpacing: 3,
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromRGBO(0, 0, 0, 1))),
                        ),
                      ],
                    ),
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}