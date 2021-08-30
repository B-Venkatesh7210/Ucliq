import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/models/categoryCardListModel.dart';
import 'package:ucliq/pages/categoryChicken.dart';

import 'categoryCircleWidget.dart';

class CategoryCard extends StatefulWidget {
  final CategoryCardListClass categoryCardListClass;

  CategoryCard({
    required this.categoryCardListClass,
    Key? key,
  }) : super(key: key);

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation =
        CurvedAnimation(parent: _controller!, curve: Curves.fastOutSlowIn);
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  bool isTapped = false;
  void expandAnimation() {
    if (isTapped == true) {
      _controller!.forward();
    } else
      _controller!.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 5,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isTapped = !isTapped;
              });
              expandAnimation();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: widget.categoryCardListClass.categoryColor,
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 8,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(widget.categoryCardListClass.categoryName!,
                        style: GoogleFonts.roboto(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 36,
                  ),
                  Expanded(
                    child: Container(
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 0),
                            child: Image.asset('assets/categoryTabBg.png'),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  widget.categoryCardListClass.categoryImg!,
                                  width: MediaQuery.of(context).size.width / 6,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizeTransition(
            sizeFactor: _animation!,
            axis: Axis.vertical,
            axisAlignment: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryCircle(
                        img: 'assets/homeImg5.png',
                        name: 'Chicken',
                        navigate: CategoryChicken(),
                      ),
                      CategoryCircle(
                          img: 'assets/homeImg2.png', name: 'Sea Food'),
                      CategoryCircle(img: 'assets/homeImg4.png', name: 'Mutton')
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CategoryCircle(img: 'assets/homeImg1.png', name: 'Eggs'),
                      SizedBox(width: 40),
                      CategoryCircle(
                          img: 'assets/homeImg7.png', name: 'Ready to Eat'),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
