import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:solutica/providers/sidemenu_providers.dart';

import 'services/navigation_service.dart';
import 'package:solutica/router/router.dart';

import 'package:solutica/layout/auth/login_layout.dart';


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
      initialRoute: Flurorouter.loginRoute,
      onGenerateRoute: Flurorouter.router.generator,
      builder: ( _ , child){
        return  LoginLayout(child: child!);

        //TODO: hacer el dashboard
       //return DashboardLayout(child: child!);
      },

      
    );
  }
}