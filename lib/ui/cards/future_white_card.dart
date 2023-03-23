import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class FutureWhiteCard extends StatelessWidget {

  final String? title;
  final Widget child;
   Future<String>? futureFunction;

   FutureWhiteCard({super.key, this.title, required this.child, this.futureFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(10),
      decoration: _buildBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [   
           FittedBox(
            fit: BoxFit.contain,
            child: FutureBuilder<String>(
              future: futureFunction,
              builder: ( _ , snapshot) {
              if(snapshot.hasData){
              return Text(snapshot.data!,
              style: GoogleFonts.roboto(
                fontSize: 15,
                fontWeight: FontWeight.bold ),
              );
              }else if (snapshot.hasError) {
              return const Text("Error al obtener los datos");
            } else {
              return const CircularProgressIndicator( );

            }
              })
           ),
           const Divider(),
           
          
          child
        ],
      ),

    );
  }

  BoxDecoration _buildBoxDecoration() => BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(5),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.05),
        blurRadius: 5
      )
    ]
  );
}