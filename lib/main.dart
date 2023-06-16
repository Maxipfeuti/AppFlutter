import 'package:flutter/material.dart';
import 'package:proyecto_01_app/config/theme/app_theme.dart';
import 'package:proyecto_01_app/pages/primera_pagina_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(),
      home: const PrimeraPaginaPage(),
    );
  }
}
