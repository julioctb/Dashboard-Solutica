import 'package:flutter/material.dart';

class DashboardLayout extends StatelessWidget {
 const DashboardLayout({super.key, });
  
  //final Widget child;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xffEDF1F2),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dashboard'),
              
            ],
          ),

      )
      );
        
      
  }
}