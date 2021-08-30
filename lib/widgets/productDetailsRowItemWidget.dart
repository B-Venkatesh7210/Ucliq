import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsRowItem extends StatelessWidget {
  final Color color;
  ProductDetailsRowItem({
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                '20.0 - 50.0 kg',
                style: GoogleFonts.roboto(
                    fontSize: 11, fontWeight: FontWeight.w400),
              ),
              Text(
                'Rs 25.25/kg',
                style: GoogleFonts.roboto(
                    fontSize: 11, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        height: MediaQuery.of(context).size.height / 15,
        width: MediaQuery.of(context).size.width / 4.2,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
