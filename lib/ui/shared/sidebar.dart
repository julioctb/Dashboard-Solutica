import 'package:flutter/material.dart';

import 'package:solutica/ui/shared/widgets/logo.dart';
import 'package:solutica/ui/shared/widgets/text_separator.dart';


class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      decoration: _buildBoxDecoration(),
      child: ListView(
        children: [
          Logo(),
          SizedBox( height: 50),
         
          TextSeparator( text: 'Principal'),
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