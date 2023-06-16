import 'package:flutter/material.dart';

class MecaderiaBolsaPage extends StatelessWidget {
  const MecaderiaBolsaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;

    return Container(
      width: sizeScreen.width * 0.58,
      height: sizeScreen.height * 0.12,
      decoration: BoxDecoration(
        color: const Color(0xffE92B74),
        borderRadius: BorderRadius.circular(6)
      ),
      child: Stack( 
        children: [
          
          Positioned(
            top: 30,
            left: 10,
            child: Text(
              'Pedidos Ya Market',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.8)
              ),
            ),
          ),
    
          const Positioned(
            left: 130,
            bottom: -63,
            child: Image(
              width:  200,
              height: 200,
              image: AssetImage(
              'assets/imgs/bolsa_02.png',
              )
            ),
          ),
        ]
      )
    );
  }
}