import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginLayout extends StatelessWidget {

  final Widget child;

  const LoginLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 244, 247, 253),
        
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Container(
                height: 600 ,
                width: 520,
                decoration: _buildBoxDecorationLeft(),
                child: Center(
                  child: Container(
                    color: Colors.white12,
                    height: 450,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Los logros de una organización son los',
                            style: GoogleFonts.montserrat(
                            height: 1.2,
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.w500),
                            children:[
                              TextSpan(text: ' resultados ', style: TextStyle(color: Colors.red[700])),
                              const TextSpan(text: 'del esfuerzo combinado de cada individuo.' ),

                            ],
                            ),
                            ),
                             
                            
                            const SizedBox(height: 20,),

                            Text('-Vicente Lombardi.',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.normal
                            ),
                            )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //View container
              Container(
                height: 600,
                width: 520,
                decoration: _buildBoxDecorationRight(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    
                    children: [

                    const SizedBox(height: 30),
                    const Image(image: AssetImage('logo_solutica.png'),width: 180),
                    const SizedBox(height: 20),
                    RichText(
                        text: TextSpan(
                        text: '¡Hola! ',
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                        ),
                        children:  <InlineSpan>[
                          WidgetSpan(child: Image.asset('wave.png', height: 24 ,))
                        ],
                     ),
                    ),
                    const SizedBox(height: 15),
                    Text('Por favor ingresa la siguiente información.',style: GoogleFonts.montserrat(fontWeight: FontWeight.w400),),
                    const SizedBox(height: 40),
                    Expanded(child: child),
                
                    ],
                  ),
                )
              ),
            ],
          ),
        )
      ),
    );
  }

  BoxDecoration _buildBoxDecorationRight() {
    return const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5)),
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 5)
              ],
               );
  }

  BoxDecoration _buildBoxDecorationLeft() {
    return const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 5)
                ],
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end:   Alignment.topRight,
                  colors: [
                    Color.fromRGBO(87, 201, 214, 1),
                    Color.fromRGBO(32, 82, 192, 1)
                  ]
                  
                  )
              );
  }
}

