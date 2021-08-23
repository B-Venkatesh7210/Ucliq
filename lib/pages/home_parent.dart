import 'package:flutter/material.dart';

import 'package:ucliq/pages/category.dart';
import 'package:ucliq/pages/home_page.dart';

class HomeParent extends StatefulWidget {
  const HomeParent({Key? key}) : super(key: key);

  @override
  _HomeParentState createState() => _HomeParentState();
}

class _HomeParentState extends State<HomeParent> {
  TextEditingController tec4 = TextEditingController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 8,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
          selectedItemColor: Colors.amberAccent,
          selectedLabelStyle: TextStyle(color: Colors.black),
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: TextStyle(color: Colors.black),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                title: Text("Category", style: TextStyle(color: Colors.black))),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text("Orders", style: TextStyle(color: Colors.black))),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("Account", style: TextStyle(color: Colors.black))),
          ],
        ),
        body: index == 1 ? Category() : HomePage());
  }
}
