import 'package:flutter/material.dart';

class HamburguesaPage extends StatelessWidget {
  const HamburguesaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;

    return Container(
      width: sizeScreen.width * 0.30,
      height: sizeScreen.height * 0.28,
      decoration: BoxDecoration(
        color: const Color(0xffEB9E0E),
        borderRadius: BorderRadius.circular(6)
      ),
      child: const Stack( 
        children: [
          
          Positioned(
            top:30,
            left: 5,
            child: Text(
              'Restaurantes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
            ),
          ),
              
          Positioned(
            bottom: 30,
            right: -6,
            child: Image(
              width:  160,
              height: 160,
              image: AssetImage(
              'assets/imgs/ham_02.png',
              )
            ),
          ),
        ]
      )
    );
  }
}

class _Sombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(150),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 20)
          ]),
    );
  }
}
