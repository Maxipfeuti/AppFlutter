import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationPage extends StatelessWidget {

  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.pink,
        onTap: (_){},
        items:const [
          
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house, size: 37,),
            label: 'Home' 
          ),
    
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.bell, size: 37,),
            label: 'campana'
          ),
              
    
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.twitter, size: 37,),
            label: 'Twitter' 
          ),
        
        ]
      );
  }
}