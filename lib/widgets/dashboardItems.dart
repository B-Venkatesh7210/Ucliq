import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardItems extends StatelessWidget {
  final String textName;
  final String imgName;

  const DashboardItems({
    required this.textName,
    required this.imgName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {
          //todo
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Image.asset(imgName, width: 20, height: 20),
              SizedBox(width: 15),
              Text(textName,
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(57, 57, 57, 1)))
            ],
          ),
        ),
      ),
    );
  }
}
