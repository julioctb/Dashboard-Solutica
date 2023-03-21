import 'package:flutter/material.dart';


class NotificationService {

  static final notificationKey = GlobalKey<ScaffoldMessengerState>();

  static showSnackbarError(String message){

    final snackBar = SnackBar(
      backgroundColor: Colors.red[400],
      content: Text( message , 
      style: const TextStyle(fontSize: 16.0, color: Colors.white))
      );

      notificationKey.currentState!.showSnackBar(snackBar);

  }



}