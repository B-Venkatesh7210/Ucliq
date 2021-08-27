import 'package:flutter/material.dart';

class GreenContainerListItem extends StatelessWidget {
  final String? img;
  final Color color;
  final num height;
  final num width;

  GreenContainerListItem({
    required this.height,
    required this.width,
    required this.color,
    this.img,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('tapped');
      },
      child: Container(
        color: color,
        padding: EdgeInsets.only(top: 3, left: 3, right: 3, bottom: 25),
        child: img != null
            ? Image.asset(
                img!,
                fit: BoxFit.fill,
              )
            : Container(
                color: Colors.white,
              ),
        height: MediaQuery.of(context).size.height / height,
        width: MediaQuery.of(context).size.width / width,
      ),
    );
  }
}
