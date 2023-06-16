import 'package:flutter/material.dart';

class HamburguesaPage extends StatelessWidget {
  const HamburguesaPage({super.key});

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.35,
      decoration: BoxDecoration(
        color: const Color(0xffEB9E0E),
        borderRadius: BorderRadius.circular(6)
      ),
      child:  Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
          
            SizedBox(height: size.height * 0.03),
      
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Restaurantes',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
              ),
            ),
      
            SizedBox(height: size.height *0.07),
              
            const Image(
              image: AssetImage(
                'assets/imgs/ham_02.png',
              )
            ),
          ]
        ),
      )
    );
  }
}
