import 'package:flutter/material.dart';

import 'package:solutica/ui/shared/navbar.dart';
import 'package:solutica/ui/shared/sidebar.dart';



class DashboardLayout extends StatelessWidget {
 const DashboardLayout({super.key, });
  
  //final Widget child;


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return   Scaffold(
     backgroundColor: Color(0xffEDF1F2),
      body: Stack(
        children: [ 
                    Row(
                        children: [
                          if( size.width >= 700)
                                  SideBar() ,
                                     Expanded(
                                                 child:Column(
                                                  children: [                
                                                          Navbar(),
                                                          //vista del contenido
                                                          //Expanded(child: child)
                                                          ]),
                                                          ),
                        ]),
        if( size.width < 360)
          const SideBar()
        ])
          
          
          
      );
      
        
      
  }
}