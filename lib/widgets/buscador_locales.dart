import 'package:flutter/material.dart';


class BuscadorLocales extends StatelessWidget {
  
  final String text;
  final double width;
  final double height;
  
  const BuscadorLocales({
    super.key, 
    required this.text, required this.width, required this.height
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [

          Contenedor( 
            text:   text,
            height: height,
            width:  width, 
          ),

        ],
      )
    );
  }
}


class Contenedor extends StatelessWidget {

  final String text;
  final double width;
  final double height;


  const Contenedor({
    super.key, 
    required this.text, 
    required this.width, 
    required this.height,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(left: 10),
      alignment: Alignment.centerLeft,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border(
          top:    BorderSide(color: Colors.black.withOpacity(0.2)),
          bottom: BorderSide(color: Colors.black.withOpacity(0.2)),
          right:  BorderSide(color: Colors.black.withOpacity(0.2)),
          left:   BorderSide(color: Colors.black.withOpacity(0.2)),
        ),
      ),
      child: Row(
        children:[ 

          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black.withOpacity(0.6)
            ),
          ),

          const Spacer(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
              IconButton(
                iconSize: 25,
                color: Colors.black.withOpacity(0.7),
                icon: const Icon(Icons.search_outlined),
                onPressed: (){}, 
              )
            ),
        ]
      ),
    );
  }
}

