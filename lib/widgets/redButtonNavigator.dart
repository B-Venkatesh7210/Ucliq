import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class RedButtonNavigator extends StatelessWidget {
  final String textName;
  final double? width;
  final double? height;
  final Widget navigate;
  const RedButtonNavigator({
    this.width,
    this.height,
    required this.textName,
    required this.navigate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xffD73B46))),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => navigate));
        },
        child: Container(
            width: width,
            height: height,
            child: Center(
              child: Text(textName, style: GoogleFonts.roboto()),
            )));
  }
}
