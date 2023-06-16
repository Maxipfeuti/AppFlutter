import 'package:flutter/material.dart';

class MercadoPage extends StatelessWidget {
  const MercadoPage({super.key});

  @override
  Widget build(BuildContext context) {

    

    return Container(
      width:  130,
      height: 130,
      decoration: BoxDecoration(
        color: const Color (0xff91E3E4),
        borderRadius: BorderRadius.circular(6), 
      ),
      child: const Stack(
        children: [

          Positioned(
            top: 10,
            left: 5,
            child: Text(
              'Mercados',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
  
          Positioned(
            right:  -5,
            bottom: -25,
            child: Image(
              width:  100,
              height: 100,
              image: AssetImage('assets/imgs/canasto.png')
            ),
          )
        ],
      ),
    );
  }
}