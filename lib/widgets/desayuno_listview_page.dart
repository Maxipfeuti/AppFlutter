import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class DesayunoListviewPage extends StatelessWidget {
  const DesayunoListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          children: const <Widget>[
            ContenedorDesayuno( 
              Color( 0xff63D6FF),
              Color( 0xff26AEDF)
            ),
            SizedBox(width: 10 ),
            ContenedorDesayuno(
              Color(0xffC63A60),
              Color(0xffCA3249)
            ),
          ]
        )
      )
    );
  }
}


class ContenedorDesayuno extends StatelessWidget {

  final Color colors1;
  final Color colors2;

  const ContenedorDesayuno(
    this.colors1, this.colors2, {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.push('/pages/segunda_pagina_page.dart');
      },
      child: Container(
        width:  420,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular( 5 ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end:   Alignment.bottomCenter,
            colors: [
               colors1,
               colors2
            ]
          )
        ),
        child: Stack(
          children: [
                   
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'DESAYUNÁ COMO UN',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        const Text(
                          'CAMPE',
                          style: TextStyle(
                            fontFamily: 'Archivo Black',
                            fontSize: 22
                          ),
                        ),
                        
                        Stack(
                          children: [
                            Positioned(
                              top: -10,
                              left: 0,
                              child: Transform.rotate(
                                angle: 0.5,
                                child: const Text(
                                  " ' ",
                                  style: TextStyle(
                                    fontFamily: 'Archivo Black',
                                    fontSize: 22
                                  ),
                                ),
                              ),
                            ),
                            Transform.rotate(
                              angle: 1.6,
                              child: const Text(
                                'O',
                                style: TextStyle(
                                  fontFamily: 'Archivo Black',
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ]
                        ),
                        
                        const Text(
                          'N',
                          style: TextStyle(
                            fontFamily: 'Archivo Black',
                            fontSize: 22
                          ),
                        ),
                      ]
                    ),
                  ),
    
                  const Descuento(),
                ]
              ),
            ),
              
            const Positioned(
              top:    0,
              bottom: 0,
              right:  -100,
              child: Image(
                image: AssetImage('assets/imgs/desayuno.jpg')
              ),
            ),
          ]
        ),
      ),
    );
  }
}

class Descuento extends StatelessWidget {
  const Descuento({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:  180,
      height: 50,
      child: Row(
        children: [
    
          Expanded(
            flex: 15,
            child: Container(
              padding: const EdgeInsets.only(left: 5),
              color: Colors.yellow,
              child: Stack(
                children: [
          
                  const Positioned(
                    top: 4,
                    child: Text(
                      'Con hasta',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
          
                  Positioned(
                    bottom: -7,
                    child: Row(
                      children: [
                        const Text(
                          '50%',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Archivo Black'
                          ),
                        ),
                        const SizedBox( width: 5 ),
                        Transform.rotate(
                          angle: 1.56,
                          child: const Text(
                            '0',
                            style: TextStyle(
                              fontSize: 35,
                              fontFamily: 'Archivo Black'
                            ),
                          ),
                        ),
                        const Text(
                          'FF',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Archivo Black'
                          ),
                        ),
                      ] 
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          Expanded(child: Container(color: Colors.white,))
        ]
      ),
    );
  }
}

