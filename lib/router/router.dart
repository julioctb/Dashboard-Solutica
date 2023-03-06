import 'package:fluro/fluro.dart';
import 'package:solutica/router/admin_handlers.dart';
import 'package:solutica/router/notfound_handler.dart';

class Flurorouter {

  static final FluroRouter router = FluroRouter();

  //rutas de login
  static String loginRoute      = '/auth/login';
  static String registerRoute   = '/auth/register';
  
  // rutas Dashboard
  static String dashboardRoute = '/dashboard';

  // configuracion de rutas
   static void configureRoutes(){
    router.define(loginRoute, handler: AdminHandlers.login, transitionType: TransitionType.none);
    router.define(dashboardRoute, handler: AdminHandlers.dashboard,transitionType: TransitionType.none);

    // pagina no encontrada
    router.notFoundHandler = NotFoundHandler.notFoundPage;


   }


}