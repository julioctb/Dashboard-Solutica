import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../labels/custom_labels.dart';


class RecoverView extends StatelessWidget {
  const RecoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text('Email', style: CustomLabels.labelFormField),
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
                          style: const TextStyle(color: Colors.black87))
                          
                      )
                    ]);
                        
  }
}