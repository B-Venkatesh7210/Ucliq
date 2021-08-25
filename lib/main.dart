import 'package:flutter/material.dart';
import 'package:ucliq/pages/noreturn.dart';

import 'package:ucliq/pages/welcome_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        accentColor: Color.fromRGBO(215, 59, 70, 1),
        primaryColor: Color.fromRGBO(215, 59, 70, 1)),
    home: WelcomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
