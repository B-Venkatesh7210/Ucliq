import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class BusinessProofListItem extends StatelessWidget {
  final String textName;
  final Widget? navigate;
  BusinessProofListItem({
    required this.textName,
    this.navigate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (navigate != null)
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => navigate!));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(textName,
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}