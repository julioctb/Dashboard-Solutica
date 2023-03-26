import 'package:flutter/material.dart';

class CustomRowIconButton extends StatelessWidget {
  const CustomRowIconButton({super.key, required this.icon, required this.onTap});
  final IconData  icon;
  final Function() onTap;
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), 
        color: Colors.blue.withOpacity(0.08)),
        child: Icon(icon, color: Colors.blue.shade900, size: 20,),
        
          ),
    );
    
  }
}
