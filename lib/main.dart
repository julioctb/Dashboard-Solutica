import 'package:flutter/material.dart';
import 'package:provider/provider.dart' as prov;
import 'package:supabase_flutter/supabase_flutter.dart';

import 'providers/providers.dart';

import 'package:solutica/router/router.dart';

import 'package:solutica/layout/auth/login_layout.dart';
import 'package:solutica/layout/dashboard/dashboard_layout.dart';

import 'services/navigation_service.dart';
import 'services/notification_service.dart';
import 'package:solutica/services/auth_service.dart';
import 'package:solutica/services/local_storage.dart' as storage;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await storage.LocalStorage.configurePrefs();

  await AuthService.initializer();
  
  Flurorouter.configureRoutes();
  runApp(const AppState());

}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return  prov.MultiProvider(
      providers:  [
          prov.ChangeNotifierProvider( create: (_) => AuthProvider(),lazy: false),
          prov.ChangeNotifierProvider( create: (_) => SideMenuProvider(),lazy: false),
            
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
      scaffoldMessengerKey: NotificationService.notificationKey ,
      navigatorKey: NavigationService.navigatorKey,
      initialRoute: Flurorouter.rootRoute,
      onGenerateRoute: Flurorouter.router.generator,
      builder: ( _ , child){

        final authProvider = prov.Provider.of<AuthProvider>(context);

        
       


       

        /* if ( authProvider.authStatus == AuthStatus.cheking){
          return const Center(
            child: CircularProgressIndicator(),
          );
        } */

        if ( authProvider.authStatus == AuthStatus.notauthenticated ){
          return  LoginLayout(child: child!);
        } else {
          return DashboardLayout(child: child!);
        }


      },

      
    );
  }
}