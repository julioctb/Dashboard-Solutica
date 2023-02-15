import 'package:flutter/material.dart';


class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      decoration: _buildBoxDecoration(),
      child: ListView() ,
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