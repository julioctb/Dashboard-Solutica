import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Form(
        child: Column(
          children: [
            TextFormField(
              //validator
              style: const TextStyle(color: Colors.black87),
              decoration: _buildInputDecoration(
                hint: 'ingresa tu correo',
                label: 'correo electrónico',
                icon: Icons.email_outlined),
            ),
            const SizedBox(height:20),
            TextFormField(
              //validator
              style: const TextStyle(color: Colors.black87),
              decoration: _buildInputDecoration(
                hint: '********',
                label: 'Password',
                icon: Icons.lock_outline),
            )
          ],
        ),
      ),
    );
  }

  InputDecoration _buildInputDecoration({
    required String hint,
    required String label,
    required IconData icon,
    }){

      return InputDecoration( 
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black87)
        ),
        hintText: hint,
        labelText: label,
        prefixIcon: Icon(icon),
        
      );

    } 
}