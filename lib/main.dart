import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proyecto_01_app/config/router/app_router.dart';
import 'package:proyecto_01_app/config/theme/app_theme.dart';

import 'bloc/bloc/favorite_icon_bloc.dart';
import 'bloc/navigation/navigation_page_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
       providers: [
        BlocProvider(create:(context) => NavigationPageBloc()),
        BlocProvider(create: (context) => FavoriteIconBloc())
        
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().theme(),
        routerConfig: appRouter,
      ),
    );
  }
}
