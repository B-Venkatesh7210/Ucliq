import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/pages/searchBar.dart';
import 'package:ucliq/pages/sellersList.dart';
import 'package:ucliq/widgets/dialogBoxCallSupport.dart';
import 'package:ucliq/widgets/redButtonNavigator.dart';

class BuyAgain extends StatefulWidget {
  const BuyAgain({Key? key}) : super(key: key);

  @override
  _BuyAgainState createState() => _BuyAgainState();
}

class _BuyAgainState extends State<BuyAgain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Again'),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 2),
              child: IconButton(
                icon: Icon(Icons.call),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return DialogBoxCallSupport();
                      });
                },
                iconSize: 30,
              )),
          Padding(
              padding: const EdgeInsets.only(right: 2),
              child: IconButton(
                icon: Icon(Icons.search_outlined),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchBar()));
                },
                iconSize: 30,
              )),
          Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
                iconSize: 30,
              ))
        ],
      ),
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/buyAgain.png',
                width: MediaQuery.of(context).size.width / 3,
              ),
              SizedBox(height: 30),
              Text(
                'No Orders Placed',
                style: GoogleFonts.roboto(
                    color: Color.fromRGBO(99, 99, 99, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 15),
              Text(
                'You have not placed any order yet!',
                style: GoogleFonts.roboto(
                    color: Color.fromRGBO(99, 99, 99, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 15),
              RedButtonNavigator(
                  textName: 'View Top Sellers', navigate: SellersList())
            ],
          ),
        ),
      )),
    );
  }
}
