import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text('Search',
            style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey[600],
              ))
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black87),
              borderRadius: BorderRadius.circular(8)),
          height: 50,
          width: double.infinity,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.search,
                  color: Colors.black87,
                  size: 30,
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextField(
                  style: TextStyle(fontSize: 20),
                  cursorColor: Colors.grey,
                  decoration: new InputDecoration(
                      hintText: 'Start typing.....',
                      hintStyle: GoogleFonts.roboto(
                          color: Color.fromRGBO(196, 196, 196, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none),
                  controller: search,
                  keyboardType: TextInputType.text,
                ),
              ),
              VerticalDivider(
                width: 0,
                thickness: 2,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt,
                    size: 30,
                    color: Colors.grey[600],
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
