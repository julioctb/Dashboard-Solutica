import 'package:flutter/material.dart';

class DashboardLayout extends StatelessWidget {
  DashboardLayout({super.key, required this.child});
  
  Widget child;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xffEDF1F2),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dashboard'),
              Expanded(child: child)
            ],
          ),

      )
      );
        
      
  }
}