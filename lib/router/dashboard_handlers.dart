import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

import 'package:solutica/providers/providers.dart';
import 'package:solutica/router/router.dart';

import 'package:solutica/ui/views/dashboard_view.dart';
import 'package:solutica/ui/views/login_view.dart';

class DashboardHandler {

  static Handler dashboard = Handler(
    handlerFunc: (context, params) {

      final authProvider = Provider.of<AuthProvider>(context!);
      
      Provider.of<SideMenuProvider>(context , listen: false).currentPageUrl(Flurorouter.dashboardRoute);

      if( authProvider.authStatus ==  AuthStatus.authenticated){
        return  const DashboardView();
        }else {
          return const LoginView();
        }

    }
  );




}

