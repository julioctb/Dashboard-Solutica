import 'package:flutter/material.dart';

import 'package:solutica/ui/shared/navbar.dart';
import 'package:solutica/ui/shared/sidebar.dart';



class DashboardLayout extends StatelessWidget {
 const DashboardLayout({super.key, });
  
  //final Widget child;


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     backgroundColor:  Color(0xffEDF1F2),
      body:  Row(
        children: [
         SideBar() ,
        Expanded(
          child:Column(
            children: [
              //barra de navegacion
              Navbar()

              //vista del contenido
              //Expanded(child: child)
            ],
          )
          )


        ],
        )
      );
        
      
  }
}