import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/home_parent.dart';

class AccountInfo extends StatefulWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  TextEditingController tec1 = TextEditingController();
  TextEditingController tec2 = TextEditingController();
  TextEditingController tec3 = TextEditingController();

  bool? checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/account_infoimg.png',
                        width: 150,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Enter Account Information',
                        style: GoogleFonts.roboto(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    SizedBox(height: 5),
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Register your business on ucliq",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(129, 129, 129, 1))),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Your name',
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(129, 129, 129, 1))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        controller: tec1,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            hintText: "Enter your first name",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(129, 129, 129, 0.25)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(129, 129, 129, 1),
                                    width: 2))),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Business or Shope Name',
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(129, 129, 129, 1))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        controller: tec2,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            hintText: "Enter the name of your business",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(129, 129, 129, 0.25)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(129, 129, 129, 1),
                                    width: 2))),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Pincode',
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(129, 129, 129, 1))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        controller: tec3,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            hintText: "Enter are pincode eg.560001",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(129, 129, 129, 0.25)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(129, 129, 129, 1),
                                    width: 2))),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 16,
                              width: 16,
                              child: Checkbox(
                                  activeColor: Color.fromRGBO(255, 230, 0, 1),
                                  checkColor: Colors.white,
                                  fillColor: MaterialStateProperty.all(
                                      Color.fromRGBO(255, 230, 0, 1)),
                                  value: checkBoxValue,
                                  onChanged: (value) {
                                    setState(() {
                                      checkBoxValue = value;
                                    });
                                  }),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Text(
                                'Receive order and account related upates on WhatsApp',
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(129, 129, 129, 1))),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xffD73B46))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeParent()));
                        },
                        child: Container(
                            width: double.infinity,
                            height: 50,
                            child: Center(
                              child:
                                  Text('Submit', style: GoogleFonts.roboto()),
                            ))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
