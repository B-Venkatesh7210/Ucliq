import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCircle extends StatelessWidget {
  final String img;
  final String name;
  final Widget? navigate;
  CategoryCircle({
    this.navigate,
    required this.img,
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navigate!));
      },
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 8,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.fill,
                )),
          ),
          SizedBox(height: 5),
          Text(name,
              style:
                  GoogleFonts.roboto(fontSize: 10, fontWeight: FontWeight.w400))
        ],
      ),
    );
  }
}
