import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class CustomButtonPlusGratis extends StatelessWidget {

  final IconData icon;
  final String titulo;
  final String subtitulo;
  final Color color1;
  final Color color2;
  final VoidCallback onPress;

  const CustomButtonPlusGratis({
    super.key, 
    this.icon = Icons.circle, 
    required this.titulo, 
    required this.subtitulo,
    this.color1 = Colors.grey, 
    this.color2 = Colors.blueGrey, 
    required this.onPress, 
});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      
      onPressed: onPress,
      child: Stack(
        children: <Widget>[

          _BigBottonBackground(color1, color2),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Image.network(
                'https://www.visa.com/images/merchantoffers/2023-02/1675289974831.LOGO_PedidosYa_PLUS-reducido__002_.png',
                width:  130, 
                height: 140,
              ),
              
              Expanded(
                child: Column(
                  children: [
                    Text(
                      titulo, 
                      style: const TextStyle(color: Colors.white, fontSize: 20, letterSpacing: 1.5),
                    ),
                    const SizedBox( height: 5 ),
                    Text(
                      subtitulo, 
                      style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.8),
                    ),
                  ]
                ),
              ),
              
              const SizedBox(width: 30),
              
              FaIcon(
                  FontAwesomeIcons.chevronRight, 
                  color: Colors.white.withOpacity(0.6), 
                  size: 25,
              ),
              
              const SizedBox(width: 50,),
            ],
          ),  
        ],
      ),
    );
  }
}
      
      
class _BigBottonBackground extends StatelessWidget {
  
  final Color color1;
  final Color color2;
  
  const _BigBottonBackground(
    this.color1, 
    this.color2
  );

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.1,
      margin: const EdgeInsets.all( 20 ),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.3), 
            offset: const Offset(-5, 5),
            blurRadius: 10
          )
        ],
        borderRadius: BorderRadius.circular(6),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: <Color>[
            color1,
            color2,
          ],
        ),
      ),
    );
  }
}