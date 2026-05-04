import 'dart:async';
import 'package:asttro/core/widgets/background.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AppBackground(),
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                'Você tem Tarefas Pendentes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}