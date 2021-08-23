import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/changePassword.dart';
import 'package:ucliq/pages/settings.dart';
import 'package:ucliq/widgets/redButtonNavigator.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController shopName = TextEditingController();
  TextEditingController representativeName = TextEditingController();
  TextEditingController countryCode = TextEditingController();
  TextEditingController mobileNumber = TextEditingController();
  TextEditingController emailId = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Color.fromRGBO(215, 59, 70, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    child: Stack(children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Center(
                            child: Text(
                          'A',
                          style: GoogleFonts.roboto(
                              fontSize: 51, fontWeight: FontWeight.w400),
                        )),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(255, 202, 40, 1),
                                width: 3),
                            color: Colors.white,
                            shape: BoxShape.circle),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            'assets/camera.png',
                            width: 25,
                            height: 18,
                          ),
                        ),
                      )
                    ]),
                  ),
                  Text(
                    'ABCA',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: shopName,
                      decoration: InputDecoration(
                          labelText: 'Shop Name',
                          labelStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(129, 129, 129, 1))),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      controller: representativeName,
                      decoration: InputDecoration(
                          labelText: 'Representative Name',
                          labelStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(129, 129, 129, 1))),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            controller: countryCode,
                            decoration: InputDecoration(
                                labelText: 'Country Code',
                                labelStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(129, 129, 129, 1))),
                          ),
                        ),
                        SizedBox(width: 25),
                        Expanded(
                          flex: 3,
                          child: TextField(
                            controller: mobileNumber,
                            decoration: InputDecoration(
                                labelText: 'Mobile Number',
                                labelStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(129, 129, 129, 1))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    TextField(
                      controller: emailId,
                      decoration: InputDecoration(
                          labelText: 'Email Id (Optional)',
                          labelStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(129, 129, 129, 1))),
                    ),
                    SizedBox(height: 65),
                    RedButtonNavigator(
                        textName: 'SAVE', navigate: Settings())
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}