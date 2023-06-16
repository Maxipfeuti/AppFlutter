import 'package:flutter/material.dart';


class DesayunoListviewPage extends StatelessWidget {
  const DesayunoListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 150,
        child: Expanded(
          flex: 2,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            children: const <Widget>[

              ContenedorDesayuno( 
                Color( 0xff63D6FF),
                Color( 0xff26AEDF)
              ),

              SizedBox(width: 10 ),
              
              ContenedorDesayuno(
                Color(0xffC63A60),
                Color(0xffCA3249)
              ),
            ]
          )
        )
      )
    );
  }
}


class ContenedorDesayuno extends StatelessWidget {

  final Color colors1;
  final Color colors2;

  const ContenedorDesayuno(
    this.colors1, this.colors2
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  420,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular( 5 ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end:   Alignment.bottomCenter,
          colors: [
             colors1,
             colors2
          ]
        )
      ),
      child: const Stack(
        children: [
                 
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Text(
                  'Desayuná como un',
                  style: TextStyle(
                    fontFamily: 'ArchivoBlack',
                    fontWeight: FontWeight.w900,
                    fontSize: 15
                  ),
                ),
          
                Text(
                  'CAMPEÓN',
                  style: TextStyle(
                    fontFamily: 'ArchivoBlack',
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),
                ),

                Descuento(),
              ]
            ),
          ),
            
          Positioned(
            top:    0,
            bottom: 0,
            right:  -80,
            child: Image(
              image: AssetImage('assets/imgs/desayuno.jpg')
            ),
          ),
        ]
      ),
    );
  }
}

class Descuento extends StatelessWidget {
  const Descuento({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  155,
      height: 60,
      color: Colors.yellow,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Text(
            'Con hasta',
            style: TextStyle(
              fontSize: 12
            ),
          ),
          
          Text(
            '50 % OFF',
            style: TextStyle(
              fontSize: 30
            ),
          )
        ],
      ),
    );
  }
}

