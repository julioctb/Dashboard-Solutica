import 'package:flutter/material.dart';

class LoginLayout extends StatelessWidget {
  const LoginLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: const Color.fromRGBO(246, 250, 254, 1),
        
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Container(
            height: 570,
            width: 700,
            color: Colors.blue,
           ),
           Container(
            height: 570,
            width: 700,
            color: Colors.white,
           ),
          
          ],
                )),
      ),
    );
  }
}