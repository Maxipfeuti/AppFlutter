import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeladosPage extends StatelessWidget {
  const HeladosPage({super.key});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        context.push('/pages/segunda_pagina_page.dart');
      },
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          color: const Color (0xffF5D7EB),
          borderRadius: BorderRadius.circular(6), 
        ),
        child: Column(
          children: [
    
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: const Text(
                'Helados',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
      
            Container(
              alignment: Alignment.bottomRight,
              child: Transform.rotate(
                angle: 0.2,
                child: const Image(
                  width:  84,
                  height: 84,
                  image: AssetImage('assets/imgs/helado.png')
                ),
              ),
            ),
          ]
        )
      ),
    );
  }
}