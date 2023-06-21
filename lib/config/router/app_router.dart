import 'package:go_router/go_router.dart';
import 'package:proyecto_01_app/pages/primera_pagina_page.dart';

import '../../pages/segunda_pagina_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    
    GoRoute(
      path: '/',
      name: PrimeraPaginaPage.name,
      builder: (context, state) => const PrimeraPaginaPage(),
    ),

    GoRoute(
      path: '/pages/segunda_pagina_page.dart',
      name: SegundaPaginaPage.name,
      builder: (context, state) => const SegundaPaginaPage(),
    ),

  ]
);

