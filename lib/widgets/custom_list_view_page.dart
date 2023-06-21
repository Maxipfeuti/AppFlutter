import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 115,
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          children: const <Widget>[
            ContenedorGris(
              image: 'assets/imgs/cafe.png',
              texto: 'Café & Deli',
            ),
            SizedBox(width: 10 ),
            ContenedorGris(          
              image: 'assets/imgs/bolsa_21.png',
              texto: 'Retiro en local',
            ),
            SizedBox(width: 10 ),
            ContenedorGris(      
              image: 'assets/imgs/papas.png',
              texto: 'Kioscos',
            ),
            SizedBox(width: 10 ),
            ContenedorGris(
              image: 'assets/imgs/farmacia.png',
              texto: 'Farmacia',
            ),
          ]
        ),
      ),
    );
  }
}

class ContenedorGris extends StatelessWidget {

  final String texto;
  final String image;

  const ContenedorGris({
    super.key, 
    required this.texto, 
    required this.image, 
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.push('/pages/segunda_pagina_page.dart');
      },
      child: Container(
        width:  200,
        //height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 5, left: 5),
                child: Text(
                  texto,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            
    
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(right: 5),
                alignment: Alignment.bottomRight,
                child: Image(
                  image: AssetImage(image)
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}