import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MecaderiaBolsaPage extends StatelessWidget {
  const MecaderiaBolsaPage({super.key});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        context.push('/pages/segunda_pagina_page.dart');
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffE92B74),
          borderRadius: BorderRadius.circular(6)
        ),
        child: Row(
          children: [
    
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 20, left: 10 ),
              child: Text(
                'Pedidos Ya Market',
                style: TextStyle(
                  fontSize: 18, 
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.8)
                ),
              ),
            ),
    
            const SizedBox(width: 20),
    
            Container(
              alignment: Alignment.centerRight,
              child: const Image(
                image: AssetImage(
                'assets/imgs/bolsa_02.png',
                )
              ),
            ),
          ],
        )
      ),
    );
  }
}
