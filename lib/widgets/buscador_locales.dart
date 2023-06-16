import 'package:flutter/material.dart';


class BuscadorLocales extends StatelessWidget {
  const BuscadorLocales({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [

          Contenedor(),

        ],
      )
    );
  }
}


class Contenedor extends StatelessWidget {
  const Contenedor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
      width: screenSize.width,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: const Border(
          top: BorderSide(),
          bottom: BorderSide(),
          right: BorderSide(),
          left: BorderSide(),
        ),
      ),
      child: Row(
        children:[ 

          Text(
            'Buscar locales',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black.withOpacity(0.6)
            ),
          ),

          const Spacer(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width:  40,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xffE92B74),
                borderRadius: BorderRadius.circular(6),
              ),
              child:IconButton(
                iconSize: 25,
                color: Colors.white.withOpacity(0.6),
                icon: const Icon(Icons.search_outlined),
                onPressed: (){}, 
              )
            ),
          ),
        ]
      ),
    );
  }
}

