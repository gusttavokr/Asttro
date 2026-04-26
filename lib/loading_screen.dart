import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000), // Seu fundo preto
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // 1. SUA LOGO REAL (Com as cores originais)
            Image.asset(
              'assets/Logo.png',
              width: 280, // Tamanho que você queria
              fit: BoxFit.contain,
            ),
            // 2. O BRILHO (Passando por cima)
            SizedBox(
              width: 280,
              child: Shimmer.fromColors(
                // O segredo: base transparente não apaga a logo de baixo
                baseColor: Colors.transparent,
                highlightColor: Colors.white.withOpacity(0.5),
                period: const Duration(milliseconds: 2000),
                child: Container(
                  width: 280,
                  height: 200, // Ajuste para a altura aproximada da logo
                  color: Colors.black, // O Shimmer usa isso como máscara de brilho
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}