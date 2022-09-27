import 'package:flutter/material.dart';

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

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // this will make the navbar
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.grey.shade100,
      toolbarHeight: 100,
      elevation: 4, // this add the shadown to the navbar
      // this add the logo DiaryBook in the navbar
      title: Row(children: [
        Text(
          'Diary',
          style: TextStyle(fontSize: 39, color: Colors.blueGrey.shade400),
        ),
        Text(
          'Book',
          style: TextStyle(fontSize: 39, color: Colors.green),
        )
      ]),
    ));
  }
}
