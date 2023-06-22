
import 'package:flutter/material.dart';


class SecondpageListview extends StatelessWidget {
  const SecondpageListview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 30,
      child: Row(
        children: [
          
          const Icon(Icons.tune_outlined),
          
          const SizedBox(width: 10),
          
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              const Text(
                'Filtros',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
              
              Container(
               width: 40,
               height: 1,
               color: Colors.black,
              ),
            ],
          ),
    
          
          const SizedBox(width: 20),
          
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:const [ 
                Box( text: 'Retiro en local' ),
                SizedBox(width: 15),
                Box( text: 'Descuentos' ),
                SizedBox(width: 15),
                Box( text: 'Envío gratis' ),
                SizedBox(width: 15),
                Box( text: 'Beneficios' ),

              ]
            )
          )
          
       
        ],
      ),
    );
  }
}

class Box extends StatelessWidget {
  
  final String text;
  
  const Box({
    super.key, 
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  110,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(4),
        border: Border(
          top:    BorderSide(color: Colors.black.withOpacity(0.2)),
          bottom: BorderSide(color: Colors.black.withOpacity(0.2)),
          right:  BorderSide(color: Colors.black.withOpacity(0.2)),
          left:   BorderSide(color: Colors.black.withOpacity(0.2)),
       )
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black.withOpacity(0.68),
            fontWeight: FontWeight.w700
          ),
        ),
      ),
    );
  }
}
