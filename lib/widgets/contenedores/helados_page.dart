import 'package:flutter/material.dart';

class HeladosPage extends StatelessWidget {
  const HeladosPage({super.key});

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.14,
      decoration: BoxDecoration(
        color: const Color (0xffF5D7EB),
        borderRadius: BorderRadius.circular(6), 
      ),
      child: Stack(
        children: [

          const Positioned(
            top: 10,
            left: 5,
            child: Text(
              'Helados',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
  
          Transform.rotate(
            angle: 0.2,
            child: const Image(
              //width:  100,
              //height: 100,
              image: AssetImage('assets/imgs/helado.png')
            ),
          )
        ],
      )
    );
  }
}