import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextSeparator extends StatelessWidget {

  final String text;

  const TextSeparator({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin:  const EdgeInsets.only(bottom: 5),
      child:  Row(
        children: [
        
        TextDivider(text: text),
         Expanded(
           child: Divider(
              height: 5,
              indent: 5,
              
              color: Colors.white.withOpacity(0.4)
            ),
         ),

        
        
        ] 
        

      ),
    );
  }
}

class TextDivider extends StatelessWidget {
  const TextDivider({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: GoogleFonts.roboto(
      fontSize: 14,
      color: Colors.white.withOpacity(0.4)
    ),
    );
  }
}