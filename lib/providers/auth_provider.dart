import 'package:flutter/material.dart';
import 'package:solutica/router/router.dart';
import 'package:solutica/services/auth_service.dart';
import 'package:solutica/services/local_storage.dart' as storage;
import 'package:solutica/services/navigation_service.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

enum AuthStatus { cheking, authenticated, notauthenticated }

class AuthProvider extends ChangeNotifier {
  AuthStatus authStatus = AuthStatus.cheking;

  String? _token;

  AuthProvider() {
    isAuthenticated();
  }

  Future login({required String email, required String password}) async {
    final response = await AuthService.supabase.auth
        .signInWithPassword(email: email, password: password);

    final Session? session = response.session;

    _token = session?.accessToken;
    storage.LocalStorage.prefs.setString('token', _token!);
    authStatus = AuthStatus.authenticated;
    notifyListeners();
    NavigationService.replaceTo(Flurorouter.dashboardRoute);
  }

  Future signUp({required String email, required String password}) async {
    // ignore: unused_local_variable
    final response = await AuthService.supabase.auth
        .signUp(email: email, password: password);
    // ignore: unused_local_variable
    final User? user = AuthService.supabase.auth.currentUser;

    NavigationService.navigateTo(Flurorouter.dashboardRoute);
  }

  Future logout()async{
    storage.LocalStorage.prefs.remove('token');
    authStatus = AuthStatus.notauthenticated;
    await AuthService.supabase.auth.signOut();
    notifyListeners();
  }

  isAuthenticated() {
    final token = storage.LocalStorage.prefs.getString('token');

    if (token == null) {
      authStatus = AuthStatus.notauthenticated;
      notifyListeners();
      return false;
    }

    try {
      // ignore: unused_local_variable
      final User? user = AuthService.supabase.auth.currentUser;

      authStatus = AuthStatus.authenticated;
      notifyListeners();
      return true;
    } catch (e) {
      authStatus = AuthStatus.notauthenticated;
      notifyListeners();
      return false;
    }
  }
}
