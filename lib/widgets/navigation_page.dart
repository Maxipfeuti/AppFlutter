import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proyecto_01_app/bloc/navigation/navigation_page_bloc.dart';

List <BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[

  BottomNavigationBarItem(
    icon: FaIcon(FontAwesomeIcons.house),
    label: 'Inicio' 
  ),      
  BottomNavigationBarItem(
    icon: FaIcon(FontAwesomeIcons.percent),
    label: 'Promociones'
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.list_alt_outlined),
    label: 'Pedidos'
  ),
      
  BottomNavigationBarItem(
    icon: FaIcon(FontAwesomeIcons.user),
    label: 'Mi Perfil' 
  ),

];


class NavigationPage extends StatelessWidget {

  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavigationPageBloc, NavigationPageState>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        return SizedBox(
          height: 81,
          child: BottomNavigationBar(
            items: bottomNavItems,
            currentIndex: state.index,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            onTap: (value) {
              BlocProvider.of<NavigationPageBloc>(context)
                .add(Index(index: value));
            },
          ),
        );
      },
    );
  }
}