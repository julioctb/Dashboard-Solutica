import 'package:flutter/material.dart';

class LoginLayout extends StatelessWidget {
  const LoginLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: const Color.fromRGBO(246, 250, 254, 1),
        
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:45,vertical: 100),
          child: Expanded(
            child: Row(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.blue,
                )
              ],
            )
            ),
          )
      ),
    );
  }
}