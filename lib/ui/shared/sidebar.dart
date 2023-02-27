import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      decoration: _buildBoxDecoration(),
      child: ListView(
        physics:const ClampingScrollPhysics(),
        children:  [
         const Logo(),
         const SizedBox( height: 40),
         const TextSeparator( text: 'Principal'),
          MenuItem(
            text: 'Dashboard',
            icon: Icons.compass_calibration_outlined,
            isActive: false,
            onPressed: (){},
          ),
        ],
      ) ,
    );
  }

  BoxDecoration _buildBoxDecoration() => const BoxDecoration(
    gradient:  LinearGradient(
      colors: [
        Color(0xff092044),
        Color(0xff092042)
      ]),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10
        )
      ]

  );
}