import 'package:flutter/material.dart';

import 'services/navigation_service.dart';
import 'package:solutica/router/router.dart';
import 'layout/dashboard/dashboard_layout.dart';

void main() {
  Flurorouter.configureRoutes();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Panel de control - Solutica',
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationService.navigatorKey,
      initialRoute: Flurorouter.initialRoute,
      onGenerateRoute: Flurorouter.router.generator,
      builder: ( context , child){
       return DashboardLayout(child: child!);
      },

      
    );
  }
}