import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:proyecto_01_app/widgets/widgets.dart';


class SegundaPaginaPage extends StatelessWidget {
  
  static const String name = 'segunda_pagina';
  
  const SegundaPaginaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          const SizedBox(height: 50),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              
              Expanded(
                child: IconButton(
                  icon: const Icon(Icons.chevron_left, size: 60,),
                  onPressed: (){
                    context.pop();
                  }
                ),
              ),
        
              const Expanded(
                flex: 5,
                child: BuscadorLocales( 
                  text: 'Buscar Restaurantes',
                  height: 50,
                  width:double.infinity,
                ),
              ),
            ]
          ),

          const SizedBox(height: 20),

          const SecondpageListview(),

          const SizedBox(height: 20),

          const RestaurantesListview()

        ],
      ),
    );
  }
}



