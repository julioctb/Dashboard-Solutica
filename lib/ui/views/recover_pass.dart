import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';
import 'package:solutica/router/router.dart';
import 'package:solutica/services/navigation_service.dart';

import '../labels/custom_labels.dart';


class RecoverView extends StatelessWidget {
  const RecoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: [
                        const SizedBox(height: 50,),
                        Text('Ingresa tu correo', style: CustomLabels.labelFormField),
                        const SizedBox(height:5),
                        Container(
                          width: 300,
                          color: const Color.fromARGB(255, 244, 247, 253),
                          child: TextFormField(
                            
                            validator:(value) {
                              if (value!.isEmpty) return 'el campo no debe de ir vacio';
                              if (!EmailValidator.validate(value)) return 'el correo no es válido';
                              return null;
                            },
                            style: const TextStyle(color: Colors.black87),
                            decoration: InputDecoration( 
                              border:  OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueGrey.shade50)
                              ),)
                            ),
                            ),
                            const SizedBox(height:10),
                            TextButton(
                      
                            onPressed: () => NavigationService.navigateTo(Flurorouter.loginRoute),
                            child: Text('Regresar',
                            style: GoogleFonts.montserrat(
                              color: Colors.blue[87] )
                            ),
                          ),
                          const SizedBox(height: 30),
                         SizedBox(
                        width: 300,
                        height: 40,
                        child: FilledButton(
                          style: FilledButton.styleFrom(backgroundColor: const Color.fromRGBO(32, 82, 192, 1)),
                          onPressed: (){},
                          child: const Text('Solicitar', style: TextStyle(fontSize: 15),)
                          ),
                      )
                          
                        
                      ]),
    );
                        
  }
}