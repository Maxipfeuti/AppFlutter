import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';


import '../widgets/widgets.dart';


class PrimeraPaginaPage extends StatelessWidget {
  
  static const String name = 'primera_pagina';
  
  const PrimeraPaginaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppbar(),
          
          BuscadorLocales( 
            text: 'Buscar locales', 
            width: double.infinity ,
            height: 50,
          ),
          
          SizedBox( height: 5 ),
          
          PlusGratisButton(),
          
          SizedBox( height: 15 ),
          
          ContenedorPrincipal(),
          
          SizedBox( height: 15 ),
          
          CustomListView(),
          
          SizedBox( height: 25 ),
          
          DesayunoListviewPage(),
          
          SizedBox( height: 37 ),
          
        ],
      ),
      bottomNavigationBar: NavigationPage(),
    );
  }
}

class ContenedorPrincipal extends StatelessWidget {
  const ContenedorPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {


    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 250,
        child: Row(
          children: [
    
            Expanded(
              child: HamburguesaPage()
            ),
    
            SizedBox(width: 10),
                  
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  
                  Expanded(
                    child: MecaderiaBolsaPage()
                  ),
                  
                  SizedBox(height: 10),
                        
                  Expanded(
                    child: Row(
                      children: [
                          
                        Expanded(child: MercadoPage()),
                        
                        SizedBox(width:10),
                          
                        Expanded(child: HeladosPage()) 
                      ],
                    ),
                  )
                ]
              ),
            ),
          ]
        )
      ),
    );
  }
}




class PlusGratisButton extends StatelessWidget {
  const PlusGratisButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButtonPlusGratis(
      onPress: (){
        context.push('/pages/segunda_pagina_page.dart');
      },
      icon: FontAwesomeIcons.chevronRight,
      titulo: 'SUMATE A PLUS GRATIS' ,
      subtitulo: 'Con Visa Santander 2 meses gratis',
      color1: const Color(0xff2E084D),
      color2: const Color(0xff0E0217),
    );
  }
}


