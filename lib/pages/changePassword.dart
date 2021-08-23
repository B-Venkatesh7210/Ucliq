import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/settings.dart';
import 'package:ucliq/widgets/redButtonNavigator.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _showPassword1 = false;
  bool _showPassword2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Change Password here',
                style: GoogleFonts.roboto(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 25),
              TextField(
                obscureText: !this._showPassword1,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(
                              () => this._showPassword1 = !this._showPassword1);
                        },
                        icon: Icon(
                          Icons.remove_red_eye,
                          color:
                              this._showPassword1 ? Colors.blue : Colors.grey,
                        )),
                    hintText: 'Enter Old Password Here',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(129, 129, 129, 1))),
              ),
              TextField(
                obscureText: !this._showPassword2,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(
                              () => this._showPassword2 = !this._showPassword2);
                        },
                        icon: Icon(
                          Icons.remove_red_eye,
                          color:
                              this._showPassword2 ? Colors.blue : Colors.grey,
                        )),
                    hintText: 'Enter New Password Here',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(129, 129, 129, 1))),
              ),
              SizedBox(height: 30),
              RedButtonNavigator(textName: 'SAVE', navigate: Settings())
            ],
          ),
        ),
      )),
    );
  }
}
