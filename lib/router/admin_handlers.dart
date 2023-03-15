import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

import 'package:solutica/providers/auth_provider.dart';
import 'package:solutica/ui/views/blank_view.dart';

import 'package:solutica/ui/views/login_view.dart';

import 'package:solutica/ui/views/recover_pass.dart';

class AdminHandlers {

  static Handler login = Handler(
    handlerFunc: (context, params) {

      final authProvider = Provider.of<AuthProvider>(context!);

      if ( authProvider.authStatus == AuthStatus.notauthenticated ) {
        return const LoginView();
      } else {
        return const DashboardView();
      }
      
    } 
    );

  static Handler recover = Handler(
    handlerFunc: (context, params) => const RecoverView()
    );


  

}