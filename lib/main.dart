import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/providers.dart';
import 'package:solutica/services/local_storage.dart';

import 'package:solutica/api/cafe_api.dart';

import 'services/navigation_service.dart';
import 'package:solutica/router/router.dart';

import 'package:solutica/layout/auth/login_layout.dart';
import 'package:solutica/layout/dashboard/dashboard_layout.dart';


void main() async {
  await LocalStorage.configurePrefs();
  CafeApi.configureDio();
  Flurorouter.configureRoutes();
  runApp(const AppState());

}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers:  [
          ChangeNotifierProvider( create: (_) => AuthProvider(),lazy: false),
          ChangeNotifierProvider( create: (_) => SideMenuProvider(),lazy: false),
            
          ],
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
      initialRoute: Flurorouter.rootRoute,
      onGenerateRoute: Flurorouter.router.generator,
      builder: ( _ , child){

        final authProvider = Provider.of<AuthProvider>(context);

        if ( authProvider.authStatus == AuthStatus.cheking){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if ( authProvider.authStatus == AuthStatus.notauthenticated ){
          return  LoginLayout(child: child!);
        } else {
          return DashboardLayout(child: child!);
        }


      },

      
    );
  }
}