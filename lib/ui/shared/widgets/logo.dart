import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.white54;

    return  Padding(
      padding: const EdgeInsets.only(top: 20),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Icon(Icons.bubble_chart_outlined, color: color),
        const SizedBox(width: 10,),
        Text('Admin',
        style: GoogleFonts.montserratAlternates(
          fontSize: 20.0,
          fontWeight: FontWeight.w200,
          color: color
        ),
        )
      ]),
    );
  }
}