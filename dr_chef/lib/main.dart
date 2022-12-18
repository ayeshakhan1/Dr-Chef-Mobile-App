// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dr. Chef',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:  Colors.brown,
      ),
      home: Scaffold(
        appBar: null,
        body: Login(),
      ),
    );
  }
}