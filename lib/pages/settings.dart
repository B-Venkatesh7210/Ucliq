import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/aboutUs.dart';
import 'package:ucliq/pages/changePassword.dart';
import 'package:ucliq/pages/profile.dart';
import 'package:ucliq/pages/tandc.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(236, 235, 235, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                'ACCOUNT SETINGS',
                style: GoogleFonts.roboto(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Material(
                        color: Colors.white,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 12),
                            child: Text(
                              'Edit Profile',
                              style: GoogleFonts.roboto(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Container(
                      width: double.infinity,
                      child: Material(
                        color: Colors.white,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChangePassword()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 12),
                            child: Text(
                              'Change Password',
                              style: GoogleFonts.roboto(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Container(
                      width: double.infinity,
                      child: Material(
                        color: Colors.white,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TermsAndConditions()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 12),
                            child: Text(
                              'Terms & Conditions',
                              style: GoogleFonts.roboto(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Container(
                      width: double.infinity,
                      child: Material(
                        color: Colors.white,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutUs()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 12),
                            child: Text(
                              'About Us',
                              style: GoogleFonts.roboto(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Container(
                      width: double.infinity,
                      child: Material(
                        color: Colors.white,
                        child: InkWell(
                          onTap: () {
                            print('tapped');
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 12),
                            child: Text(
                              'Watch Tutorial',
                              style: GoogleFonts.roboto(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                'GENERAL',
                style: GoogleFonts.roboto(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Material(
                        color: Colors.white,
                        child: InkWell(
                          onTap: () {
                            print('tapped');
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 12),
                            child: Text(
                              'Rate Us!',
                              style: GoogleFonts.roboto(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Container(
                      width: double.infinity,
                      child: Material(
                        color: Colors.white,
                        child: InkWell(
                          onTap: () {
                            print('tapped');
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 12),
                            child: Text(
                              'Share App with friend !',
                              style: GoogleFonts.roboto(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}