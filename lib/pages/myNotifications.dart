import 'package:flutter/material.dart';

import 'package:ucliq/models/myNotificationsListModel.dart';

import 'package:ucliq/widgets/myNotificationsListItemWidget.dart';

class MyNotifications extends StatefulWidget {
  const MyNotifications({Key? key}) : super(key: key);

  @override
  _MyNotificationsState createState() => _MyNotificationsState();
}

class _MyNotificationsState extends State<MyNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Notifications'),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: notification.length,
              itemBuilder: (context, index) => MyNotificationsListItem(
                    myNotificationsListItemClass: notification[index],
                  ))),
    );
  }
}
