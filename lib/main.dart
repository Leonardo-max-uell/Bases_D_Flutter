import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Home_screem.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Counter App',
        home: Home_screem());
  }
}
