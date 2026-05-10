import 'package:flutter/material.dart';

class SearchBarApp extends StatefulWidget {
  const SearchBarApp({super.key});

  @override
  State<SearchBarApp> createState() => _SearchBarAppState();
}

class _SearchBarAppState extends State<SearchBarApp> {
  // Você usa um TextEditingController normal em vez de um SearchController
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      style: const TextStyle(color: Colors.white), 
      cursorColor: Colors.white.withValues(alpha: 0.5),// Cor do texto digitado
      decoration: InputDecoration(
        hintText: 'Pesquisar tarefa...',
        hintStyle: TextStyle(color: Colors.white.withValues(alpha: 0.5)),
        prefixIcon: const Icon(Icons.search, color: Colors.white),
        filled: true,
        fillColor: Colors.white.withValues(alpha: 0.1), // Cor de fundo da barra
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none, // Remove a linha feia embaixo
        ),

        
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      ),
      onChanged: (value) {
        // O que acontece quando o usuário digita
        print('Pesquisando por: $value');
      },
    );
  }
}