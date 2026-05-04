import 'dart:async';
import 'package:asttro/core/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark),
      child: Scaffold(
        body: Stack(
          children: [
            const AppBackground(),
            const SafeArea(
              child: Padding(
                padding: EdgeInsets.all(24),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Olá, Gustavo!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Suas tarefas pendentes:',
                      style: TextStyle(
                        fontWeight: FontWeight(700),
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    ),
                  ],
                )

              ),
            ),
          ],
        ),
      ),
    );
  }
}
