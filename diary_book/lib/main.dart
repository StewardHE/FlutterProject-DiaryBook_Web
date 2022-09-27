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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyDiary(),
    );
  }
}

class MyDiary extends StatelessWidget {
  const MyDiary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
