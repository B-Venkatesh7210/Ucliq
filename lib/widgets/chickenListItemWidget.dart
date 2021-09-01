import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:ucliq/models/chickenListItemModel.dart';
import 'package:ucliq/pages/productDetails.dart';

class ChickenListItem extends StatefulWidget {
  ChickenListItemClass chickenListItemClass;
  ChickenListItem({
    required this.chickenListItemClass,
    Key? key,
  }) : super(key: key);

  @override
  _ChickenListItemState createState() => _ChickenListItemState();
}

class _ChickenListItemState extends State<ChickenListItem>
    with TickerProviderStateMixin {
  late final AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);
  }

  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductDetails()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.chickenListItemClass.chickenImg!,
              width: MediaQuery.of(context).size.width / 3,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.chickenListItemClass.chickenName!,
                      style: GoogleFonts.roboto(
                          fontSize: 18, fontWeight: FontWeight.w500)),
                  SizedBox(height: 5),
                  Text(widget.chickenListItemClass.chickenDesp!,
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(129, 129, 129, 1),
                          fontSize: 10,
                          fontWeight: FontWeight.w300)),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Image.asset(
                        'assets/myFavStar.png',
                        width: 15,
                      ),
                      Image.asset(
                        'assets/myFavStar.png',
                        width: 15,
                      ),
                      Image.asset(
                        'assets/myFavStar.png',
                        width: 15,
                      ),
                      Image.asset(
                        'assets/myFavStar.png',
                        width: 15,
                      ),
                      Image.asset(
                        'assets/myFavStar.png',
                        width: 15,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text('Price: Rs.${widget.chickenListItemClass.chickenPrice}',
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(215, 59, 70, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: 5),
                  Text('SOLD BY: ${widget.chickenListItemClass.shopName}',
                      style: GoogleFonts.roboto(
                          fontSize: 9, fontWeight: FontWeight.w500)),
                  SizedBox(height: 10),
                  Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width / 4,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Text('Add',
                            style: GoogleFonts.roboto(
                                color: Color.fromRGBO(255, 202, 40, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                  )
                ],
              ),
            ),
            InkWell(
                onTap: () {
                  if (isTapped) {
                    _animationController
                      ..duration = Duration(milliseconds: 500);
                    _animationController.reverse();
                  } else {
                    _animationController..duration = Duration(seconds: 1);
                    _animationController.forward();
                  }
                  setState(() {
                    isTapped = !isTapped;
                  });
                },
                child: Lottie.asset('assets/likeAnimation.json',
                    width: 50,
                    repeat: false,
                    controller: _animationController,
                    onLoaded: (x) {}))
          ],
        ),
      ),
    );
  }
}
