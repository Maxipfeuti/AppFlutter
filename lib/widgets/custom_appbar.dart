import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
      child: SizedBox(
          width: double.infinity,
          height: 50,
          child: Row(
            children: [
    
              const Text(
                'San Martín 776',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500
                ),
              ),
    
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.chevronDown, size: 20,),
                onPressed: () {}, 
              ),
    
              const Spacer(),
    
              IconButton(
                icon: const Icon(Icons.campaign, size: 40,),
                onPressed: (){}, 
              ),
    
            ],
          ),
        ),
    );
  }
}