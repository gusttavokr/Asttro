// lib/main.dart
import 'package:flutter/material.dart';
import 'loading_screen.dart'; // Importe o arquivo que você criou

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu App tipo iFood',
      // Aqui você define qual tela abre primeiro
      home: LoadingScreen(),
    );
  }
}