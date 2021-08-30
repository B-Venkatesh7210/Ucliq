import 'package:flutter/material.dart';
import 'package:ucliq/models/chickenListItemModel.dart';
import 'package:ucliq/models/chickenSwipeImagesModel.dart';

class ChickenSwipeImages extends StatelessWidget {
  num height=4;
  num width=1;
  final ChickenSwipeImagesClass chickenSwipeImagesClass;
  ChickenSwipeImages({
    required this.height,
    required this.width,
    required this.chickenSwipeImagesClass,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height / height,
        width: MediaQuery.of(context).size.width / width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Image.asset(
          chickenSwipeImagesClass.img!,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
