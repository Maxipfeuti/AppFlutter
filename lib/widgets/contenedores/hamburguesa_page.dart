import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HamburguesaPage extends StatelessWidget {
  const HamburguesaPage({super.key});

  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: (){
        context.push('/pages/segunda_pagina_page.dart');
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffEB9E0E),
          borderRadius: BorderRadius.circular(6)
        ),
        child:  Column(
          children: [
            
            const SizedBox(height: 20),
      
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 10),
                child: const Text(
                    'Restaurantes',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
                  ),
              ),
            ),
            
            const Expanded(
              flex: 2,
              child: Image(
                image: AssetImage(
                  'assets/imgs/hamb_02.png',
                )
              ),
            ),
          ]
        ),
      ),
    );
  }
}
