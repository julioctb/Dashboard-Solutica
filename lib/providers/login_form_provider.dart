import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier{

 GlobalKey<FormState> formKey = GlobalKey<FormState>();  

  late String email;
  late String password;

 validateForm(){

  formKey.currentState!.validate();

 }



}