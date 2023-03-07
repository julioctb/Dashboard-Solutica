import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:solutica/ui/labels/custom_labels.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Form(
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.end,
           children: [

            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email', style: CustomLabels.labelFormField),
                  const SizedBox(height:5),
                  Container(
                    width: 300,
                    color: const Color.fromARGB(255, 244, 247, 253),
                    child: TextFormField(
                      //validator
                      style: const TextStyle(color: Colors.black87),
                      decoration: _buildInputDecoration(
                        //hint: 'ingresa tu correo',
                        ),   
                    ),
                  ), ], ),
                  ),
            const SizedBox(height:30),

            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contraseña', style: CustomLabels.labelFormField),
                  const SizedBox(height:5),
                  Container(
                    width: 300,
                    color:  const Color.fromARGB(255, 244, 247, 253) ,
                    child: TextFormField(
                      //validator
                      obscureText: true,
                      style: const TextStyle(color: Colors.black87),
                      decoration: _buildInputDecoration(
                        //hint: '***********', 
                        //icon: Icons.remove_red_eye_outlined 
                        ))),
                  const SizedBox(height:20)
                ]) ),
                TextButton(
                  onPressed: () { },
                  child: Text('¿Olvidaste tu contraseña?',
                  style: GoogleFonts.montserrat(
                    color: Colors.blue[87] )
                  ),
                )

          ],
        ),
      ),
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