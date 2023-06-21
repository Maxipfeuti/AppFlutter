import 'package:flutter/material.dart';
import 'package:proyecto_01_app/config/router/app_router.dart';
import 'package:proyecto_01_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(),
      routerConfig: appRouter,
    );
  }
}
