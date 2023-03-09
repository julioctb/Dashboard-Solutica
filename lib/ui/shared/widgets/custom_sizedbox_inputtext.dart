import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../labels/custom_labels.dart';

class CustomSizedBoxInutText extends StatelessWidget {

  final String textLabel;
  final Function onchanged;
  final Function validator;

  const CustomSizedBoxInutText({
    super.key, 
    required this.textLabel, 
    required this.onchanged, 
    required this.validator
    });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text( textLabel, style: CustomLabels.labelFormField),
                      const SizedBox(height:5),
                      Container(
                        width: 300,
                        color: const Color.fromARGB(255, 244, 247, 253),
                        child: TextFormField(
                          onChanged: onchanged(),
                          validator: validator() ,
                          style: const TextStyle(color: Colors.black87),
                          decoration: _buildInputDecoration(
                            //hint: 'ingresa tu correo',
                            ),   
                        ),
                      ), ], ),
                      );
  }

   InputDecoration _buildInputDecoration({ String? hint, IconData? icon }){
      return InputDecoration( 
          border:  OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey.shade50)
          ),
          suffixIcon: Icon(icon),
        hintText: hint,
        hintStyle: GoogleFonts.montserrat(
          color: Colors.blueGrey.shade300,
          fontSize: 14),
        );
   }
}
