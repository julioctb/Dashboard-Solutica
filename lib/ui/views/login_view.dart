import 'package:flutter/material.dart';
import 'package:provider/provider.dart'as prov;

import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

import 'package:solutica/router/router.dart';
import 'package:solutica/providers/providers.dart' ;
import 'package:solutica/services/navigation_service.dart';
import 'package:solutica/services/notification_service.dart';

import 'package:solutica/ui/labels/custom_labels.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


class LoginView extends StatelessWidget {
  final double width =300;
  final Color colorContainer = const Color.fromARGB(255, 244, 247, 253);

 const LoginView({super.key});

  @override
  Widget build(BuildContext context) {

    final authprovider = prov.Provider.of<AuthProvider>(context);

    return  prov.ChangeNotifierProvider(
      create: ( _ ) => LoginFormProvider(),
      child: Builder( builder: (context) {

        final loginFormProvider = prov.Provider.of<LoginFormProvider>(context, listen: false);
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
                        width: width,
                        color: colorContainer ,
                        child: TextFormField(
                          onChanged: (value) => loginFormProvider.email = value,
                          validator:(value) {
                            if (value!.isEmpty) return 'el campo no debe de ir vacio';
                            if (!EmailValidator.validate(value)) return 'el correo no es válido';
                            return null;
                          },
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
                        width: width,
                        color:  colorContainer ,

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
                      
                      onPressed: () => NavigationService.navigateTo(Flurorouter.recoverRoute),
                      child: Text('¿Olvidaste tu contraseña?',
                      style: GoogleFonts.montserrat(
                        color: Colors.blue[87] )
                      ),
                    ),
                      const SizedBox(height:30),
                      SizedBox(
                        width: width,
                        height: 40,
                        child: FilledButton(
                          style: FilledButton.styleFrom(backgroundColor: const Color.fromRGBO(32, 82, 192, 1)),
                          onPressed: () {
                            final isValid = loginFormProvider.validateForm();
                            
                            
                            if(isValid ){
                            authprovider.login(email: loginFormProvider.email, password: loginFormProvider.password)
                            .catchError((_){
                                const message =  AuthException('Usuario o contraseña Inválido',statusCode: '400');
                                NotificationService.showSnackbarError(message.toString());
                                  
                            });
                            }
                            
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
