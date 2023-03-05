import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:solutica/providers/sidemenu_providers.dart';

import 'services/navigation_service.dart';
import 'package:solutica/router/router.dart';
import 'layout/dashboard/dashboard_layout.dart';

void main() {
  Flurorouter.configureRoutes();
  runApp(const AppState());

}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers:  [
          ChangeNotifierProvider(
            lazy: false,
            create: (_) => SideMenuProvider(),
          )],
          child: const MyApp(),
      );
  }
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