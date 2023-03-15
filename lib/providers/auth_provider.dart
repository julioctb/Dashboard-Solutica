

import 'package:flutter/material.dart';
import 'package:solutica/router/router.dart';
import 'package:solutica/services/local_storage.dart';
import 'package:solutica/services/navigation_service.dart';

enum AuthStatus{
  cheking,
  authenticated,
  notauthenticated
}

class AuthProvider extends ChangeNotifier{

  AuthStatus authStatus = AuthStatus.cheking;

  String? _token;

  AuthProvider( ){
    isAuthenticated();
  }


  login( String email, String password){

    //TODO peticion http para recibir el token
      _token = 'lkasdjflaskjdflksd';
      
      // se guarda el token en el local storage
      LocalStorage.prefs.setString('token',_token!);     
      authStatus = AuthStatus.authenticated;
      notifyListeners();
      NavigationService.replaceTo(Flurorouter.dashboardRoute);

  }

  Future isAuthenticated()async {
    
   final token = LocalStorage.prefs.getString('token');

   if(token == null){
    authStatus = AuthStatus.notauthenticated;
    notifyListeners();
    return false;
   }
      // hacer las reglas de validacion con el backend
    
   await Future.delayed(const Duration(milliseconds: 100));
    authStatus = AuthStatus.authenticated;
    notifyListeners();
    return true;

   }


  }

