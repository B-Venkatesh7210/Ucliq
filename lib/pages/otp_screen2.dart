import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ucliq/pages/account_info.dart';
import 'package:ucliq/widgets/redButtonNavigator.dart';

class OtpScreen2 extends StatefulWidget {
  const OtpScreen2({Key? key}) : super(key: key);

  @override
  _OtpScreen2State createState() => _OtpScreen2State();
}

class _OtpScreen2State extends State<OtpScreen2> {
  TextEditingController tec = TextEditingController();

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
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.centerStart,
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/otp_screenimg.png',
                            width: 250,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/star1.png', width: 48),
                              SizedBox(width: 10),
                              Image.asset('assets/star1.png', width: 48),
                              SizedBox(width: 10),
                              Image.asset('assets/star1.png', width: 48),
                              SizedBox(width: 10),
                              Image.asset('assets/star1.png', width: 48),
                            ],
                          ),
                        )
                      ],
                    ),
                    Text('Verify Mobile Number',
                        style: GoogleFonts.roboto(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    SizedBox(height: 20),
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 60),
                        child: Text(
                            "Enter 6 digit verification code sent to 9874563210",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(129, 129, 129, 1))),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: PinCodeTextField(
                        keyboardType: TextInputType.number,
                        appContext: context,
                        length: 6,
                        obscureText: false,
                        pinTheme: PinTheme(
                          inactiveColor: Colors.grey,
                          shape: PinCodeFieldShape.underline,
                          activeFillColor: Colors.white,
                        ),
                        controller: tec,
                        onCompleted: (v) {
                          print("Completed");
                        },
                        onChanged: (value) {},
                        beforeTextPaste: (text) {
                          print("Allowing to paste $text");
                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                          //but you can show anything you want here, like your pop up saying wrong paste format or etc
                          return true;
                        },
                      ),
                    ),
                    SizedBox(height: 30),
                    Text('Incase if you have not received it',
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(129, 129, 129, 1))),
                    SizedBox(height: 10),
                    InkWell(
                      child: Text('Resend OTP',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(215, 59, 70, 1))),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: RedButtonNavigator(
                        height: 50,
                        width: double.infinity,
                        textName: 'Submit',
                        navigate: AccountInfo()),
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
