

import 'package:flutter/material.dart';
import 'package:solutica/router/router.dart';
import 'package:solutica/services/local_storage.dart' as storage;
import 'package:solutica/services/navigation_service.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

enum AuthStatus{
  cheking,
  authenticated,
  notauthenticated
}

final supabase = Supabase.instance.client;

class AuthProvider extends ChangeNotifier{

  AuthStatus authStatus = AuthStatus.cheking;

  String? _token;

   AuthProvider( ){
    isAuthenticated();
  } 


  Future login({
    required String email, 
    required String password
    }) async{
      
      final response = await supabase.auth.signInWithPassword(
            email:email, 
            password: password
            );
          
      final Session? session = response.session;

       _token = session?.accessToken;
       storage.LocalStorage.prefs.setString('token',_token!);     
       authStatus = AuthStatus.authenticated;
       notifyListeners();
       NavigationService.replaceTo(Flurorouter.dashboardRoute);
  }



    Future signUp({
    required String email, 
    required String password
    }) async{

      // ignore: unused_local_variable
      final response = await supabase.auth.signUp(email:email, password: password);
      // ignore: unused_local_variable
      final User? user = supabase.auth.currentUser;
     
      
      NavigationService.navigateTo(Flurorouter.dashboardRoute);      


  }







   isAuthenticated() {
    
   final token = storage.LocalStorage.prefs.getString('token');

   if(token == null){
    authStatus = AuthStatus.notauthenticated;
    notifyListeners();
    return false;
   }
      // hacer las reglas de validacion con el backend
    
   
    authStatus = AuthStatus.authenticated;
    notifyListeners();
    return true;

   }


  }

