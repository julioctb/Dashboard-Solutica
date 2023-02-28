import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoPageFound extends StatelessWidget {
  const NoPageFound({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text('la pagina solicitada no existe o no tienes permiso para verla',
      style: GoogleFonts.roboto(
        fontSize: 16
      ),
      ),
    );
  }
}