import 'dart:async';
import 'package:asttro/features/Home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Asttro',
      theme: ThemeData(
        fontFamily: 'Inter',
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}