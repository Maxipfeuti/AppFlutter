import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 100,
        child: Expanded(
          flex: 1,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            children: const <Widget>[
              
              ContenedorGris(
                bottom: -20,
                right:  -10,
                image: 'assets/imgs/cafe.png',
                width:  100,
                height: 100,
                texto: 'Café & Deli',
              ),
              SizedBox(width: 10 ),
              ContenedorGris(
                bottom: -50,
                right:  5,
                image: 'assets/imgs/bolsa_01.png',
                width:  150,
                height: 150,
                texto: 'Retiro en local',
              ),
              SizedBox(width: 10 ),
              ContenedorGris(
                bottom: 0,
                right:  5,
                image: 'assets/imgs/papas.png',
                width:  75,
                height: 75,
                texto: 'Kioscos',
              ),
              SizedBox(width: 10 ),
              ContenedorGris(
                bottom: 0,
                right:  10,
                image: 'assets/imgs/farmacia.png',
                width:  70,
                height: 70,
                texto: 'Farmacia',
              ),

            ]
          ),
        ),
      ),
    );
  }
}

class ContenedorGris extends StatelessWidget {

  final String texto;
  final String image;
  final double width;
  final double height;
  final double bottom;
  final double right;

  const ContenedorGris({
    super.key, 
    required this.texto, 
    required this.image, 
    required this.width, 
    required this.height, 
    required this.bottom, 
    required this.right,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  160,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Stack(
        children: [

          Positioned(
            top: 7,
            left: 10,
            child: Text(
              texto,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          Positioned(
            bottom: bottom,
            right: right,
            child: Image(
              width:  width,
              height: height,
              image: AssetImage(image)
            ),
          )
        ]
      ),
    );
  }
}