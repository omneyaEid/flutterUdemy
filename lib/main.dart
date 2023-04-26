import 'package:flutter/material.dart';
import 'package:test_app/login_screen.dart';
import 'home_screen.dart';
import 'messenger_screen.dart';
import 'messenger_screen_using_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: messengerScreenList(),
    );
  }
}

