import 'package:flutter/material.dart';
import 'package:diary_book/screens/main_page.dart'; // this will add the file main_page.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // this widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diary Book',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.green,
      ),
      home: MainPage(),
    );
  }
}
