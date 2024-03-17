import 'package:first_project/screen_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp((CounterApp()));
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple), home: HomeScreen());
  }
}
