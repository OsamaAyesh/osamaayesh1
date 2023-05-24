import 'package:flutter/material.dart';
import 'package:osamaayesh1/screen1.dart';
import 'package:osamaayesh1/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/screen1",
      routes: {
        "/screen1": (context) => const Screen1(),
        "/screen2": (context) => const Screen2(),
      },
    );
  }
}
