import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CoffeeShop',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF323232),
      ),
      home: HomePage(),
    );
  }
}
