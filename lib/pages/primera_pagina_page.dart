import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/widgets.dart';


class PrimeraPaginaPage extends StatelessWidget {
  const PrimeraPaginaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
      
            CustomAppbar(),
      
            BuscadorLocales(),

            SizedBox( height: 5 ),

            PlusGratisButton(),

            SizedBox( height: 15 ),

            ContenedorPrincipal(),

            SizedBox( height: 15 ),

            CustomListView(),

            SizedBox( height: 25 ),

            DesayunoListviewPage(),
          ],
        ),
      )
    );
  }
}

class ContenedorPrincipal extends StatelessWidget {
  const ContenedorPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final sizeScreen = MediaQuery.of(context).size;

    return Container(
      width: sizeScreen.width,
      height: sizeScreen.height * 0.27,
      child: const Stack(
        children: [

          Positioned(
            left: 20,
            child: HamburguesaPage()
          ),

          Positioned(
            right: 20,
            child: Column(
              children: [
                
                MecaderiaBolsaPage(),

                 SizedBox(height: 20),
                
                Row(
                  children: [
                    MercadoPage(),

                    SizedBox(width: 15),

                    HeladosPage(),
                  ],
                ),
              
              ]
            )
          )
          
        ],
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
      onPress: (){},
      icon: FontAwesomeIcons.chevronRight,
      titulo: 'SUMATE A PLUS GRATIS' ,
      subtitulo: 'Con Visa Santander 2 meses gratis',
      color1: const Color(0xff2E084D),
      color2: const Color(0xff0E0217),
    );
  }
}


