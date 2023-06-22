import 'package:flutter/material.dart';


class BuscadorLocales extends StatelessWidget {
  
  final String text;
  final double height;
  final double width;
  
  const BuscadorLocales({
    super.key, 
    required this.text,  
    required this.height, 
    required this.width
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Contenedor( 
        text:   text,
        height: height, 
        width:  width,
      )
    );
  }
}


class Contenedor extends StatelessWidget {

  final String text;
  final double height;
  final double width;


  const Contenedor({
    super.key,  
    required this.text, 
    required this.height, 
    required this.width,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(left: 10),
      alignment: Alignment.centerLeft,
      height: height,
      width: width,
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
            padding: const EdgeInsets.only(right: 5),
            child:
              IconButton(
                iconSize: 25,
                color: Colors.black.withOpacity(0.6),
                icon: const Icon(Icons.search_outlined),
                onPressed: (){}, 
              )
            ),
        ]
      ),
    );
  }
}

