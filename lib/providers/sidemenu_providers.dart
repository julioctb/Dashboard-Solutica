

import 'package:flutter/material.dart';

class SideMenuProvider extends ChangeNotifier{

  String _currentPage = '';

  String get currentPage => _currentPage;

  void currentPageUrl(String routeName){
    _currentPage = routeName;
    Future.delayed( const Duration(milliseconds: 100), ( () => notifyListeners()) );

  }




}