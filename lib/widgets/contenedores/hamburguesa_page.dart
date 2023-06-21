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
        child: const Column(
          children: [
            
            SizedBox(height: 20),
      
            Text(
                'Restaurantes',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
              ),
      
            SizedBox(height: 80),
            
            Image(
              image: AssetImage(
                'assets/imgs/ham_02.png',
              )
            ),
          ]
        ),
      ),
    );
  }
}
