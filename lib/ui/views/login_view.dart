import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:solutica/providers/login_form_provider.dart';

import 'package:solutica/ui/labels/custom_labels.dart';

import '../shared/widgets/custom_sizedbox_inputtext.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {

    return  ChangeNotifierProvider(
      create: ( _ ) => LoginFormProvider(),
      child: Builder( builder: (context) {

        final loginFormProvider = Provider.of<LoginFormProvider>(context, listen: false);
          return Center(
          child: Form(
            key: loginFormProvider.formKey,
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
                          onChanged: (value) => loginFormProvider.email = value,
                          // validator:(value) {
                          //   if (value!.isEmpty) return 'el campo no debe de ir vacio';
                          //   if (!EmailValidator.validate(value)) return 'el correo no es válido';
                          //   return null;
                          // },
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
                          onChanged: (value) => loginFormProvider.password = value,
                          validator:(value) {
                            if( value!.isEmpty ) return 'el campo no debe de ir vacio';
                            if( value.length < 6 ) return 'la contraseña no debe ser menor a 6 caracteres';
                            return null;
                          },
                          obscureText: true,
                          style: const TextStyle(color: Colors.black87),
                          decoration: _buildInputDecoration(
                            //hint: '***********', 
                            //icon: Icons.remove_red_eye_outlined 
                            ))),
                      const SizedBox(height:10)
                    ]) ),
                    TextButton(
                      //TODO: hacer el view de recuperacion
                      onPressed: () { 

                      },
                      child: Text('¿Olvidaste tu contraseña?',
                      style: GoogleFonts.montserrat(
                        color: Colors.blue[87] )
                      ),
                    ),
                      const SizedBox(height:30),
                      SizedBox(
                        width: 300,
                        height: 40,
                        child: FilledButton(
                          style: FilledButton.styleFrom(backgroundColor: const Color.fromRGBO(32, 82, 192, 1)),
                          onPressed: (){
                            loginFormProvider.validateForm();
                          },
                          child: const Text('Ingresar', style: TextStyle(fontSize: 15),)
                          ),
                      )
      
              ],
            ),
          ),
        );
        
      },), 

     
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

class _CustomSizedBox extends StatelessWidget {
  const _CustomSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}