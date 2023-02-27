import 'package:flutter/material.dart';

import 'layout/dashboard/dashboard_layout.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
       '/' : (_) => const DashboardLayout(),

      },
      debugShowCheckedModeBanner: false,
      title: 'Panel de control - Solutica',
      
    );
  }
}