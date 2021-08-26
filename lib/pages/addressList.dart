import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucliq/models/addressListItemModel.dart';
import 'package:ucliq/pages/addNewAddress.dart';
import 'package:ucliq/widgets/addressListItemWidget.dart';
import 'package:ucliq/widgets/redButtonNavigator.dart';

class AddressList extends StatefulWidget {
  const AddressList({Key? key}) : super(key: key);

  @override
  _AddressListState createState() => _AddressListState();
}

class _AddressListState extends State<AddressList> {
  int selected = 0;
  isSelectedFunction(int x) {
    setState(() {
      selected = x;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Address List'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Saved Address',
              style:
                  GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Expanded(
                child: ListView.builder(
                    itemCount: address.length,
                    itemBuilder: (context, index) => AddressListItem(
                          addressListItemClass: address[index],
                          isSelected: index == selected,
                          index: index,
                          isSelectedFunction: isSelectedFunction,
                        ))),
            // Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RedButtonNavigator(
                textName: 'ADD NEW ADDRESS',
                navigate: AddNewAddress(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
