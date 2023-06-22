import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MercadoPage extends StatelessWidget {
  const MercadoPage({super.key});

  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: (){
        context.push('/pages/segunda_pagina_page.dart');
      },
      child: Container(
        //height: 140,
        decoration: BoxDecoration(
          color: const Color (0xff91E3E4),
          borderRadius: BorderRadius.circular(6), 
        ),
        child: Column(
          children: [
    
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 10, left: 5),
                child: const Text(
                  'Mercados',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
      
            Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.only(right: 5),
              child: const Image(
                width:  84,
                height: 84,
                image: AssetImage('assets/imgs/canasto.png')
              ),
            ),
          ],
        ),
      ),
    );
  }
}