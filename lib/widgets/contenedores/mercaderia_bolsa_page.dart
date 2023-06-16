import 'package:flutter/material.dart';

class MecaderiaBolsaPage extends StatelessWidget {
  const MecaderiaBolsaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;

    return Container(
      height: sizeScreen.height * 0.11,
      decoration: BoxDecoration(
        color: const Color(0xffE92B74),
        borderRadius: BorderRadius.circular(6)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Expanded(
            flex: 1,
            child: Column(
              children: [

                const SizedBox(height: 30),
                
                Text(
                  'Pedidos Ya Market',
                  style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.8)
                  ),
                ),
              
              ],
            ),
          ),

          const Align(
            alignment: Alignment.centerRight,
            child: Image(
              image: AssetImage(
              'assets/imgs/bolsa_02.png',
              )
            ),
          ),
        ],
      )
    );
  }
}
