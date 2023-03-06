import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

import 'package:solutica/providers/sidemenu_providers.dart';
import 'package:solutica/router/router.dart';

import 'package:solutica/ui/views/login_view.dart';
import 'package:solutica/ui/views/dashboard_view.dart';

class AdminHandlers {

  static Handler login = Handler(
    handlerFunc: (context, params) => const LoginView()
    );

  static Handler dashboard = Handler(
    handlerFunc: (context, params) {

      Provider.of<SideMenuProvider>(context! , listen: false).currentPageUrl(Flurorouter.dashboardRoute);
      return const DashboardView();
    }
    );

  

}