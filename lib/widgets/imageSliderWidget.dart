import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ucliq/models/chickenSwipeImagesModel.dart';
import 'package:ucliq/widgets/chickenSwipeImagesWidget.dart';

class ImageSlider extends StatefulWidget {
  final List<String> images;

  ImageSlider({required this.images, Key? key}) : super(key: key);

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.images.map((e) {
            return Container(
                child: ChickenSwipeImages(
                    height: 4,
                    width: 1,
                    chickenSwipeImagesClass: ChickenSwipeImagesClass(img: e)));
          }).toList(),
          options: CarouselOptions(
              aspectRatio: 16 / 9,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              autoPlay: true,
              onPageChanged: (i, x) {
                index = i;
                setState(() {});
                ;
              }),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.images.map((e) {
            int i = widget.images.indexOf(e);
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                color:
                    index == i ? Color.fromRGBO(215, 59, 70, 1) : Colors.grey,
                height: 3,
                width: 30,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
