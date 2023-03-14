

import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier{

  String? _token;


  login( String email, String password){

    //TODO peticion http para recibir el token
      _token = 'lkasdjflaskjdflksd';

      print('se guardo el token $_token');
    //navegacion al dashboard

    notifyListeners();


  }





}