import 'package:fluro/fluro.dart';
import 'package:solutica/router/admin_handlers.dart';
import 'package:solutica/router/notfound_handler.dart';

class Flurorouter {

  static final FluroRouter router = FluroRouter();

  // rutas Dashboard
  static String initialRoute   = '/';
  static String dashboardRoute = '/dashboard';

  // configuracion de rutas
   static void configureRoutes(){
    router.define(initialRoute, handler: AdminHandlers.dashboard, transitionType: TransitionType.none);
    router.define(dashboardRoute, handler: AdminHandlers.dashboard,transitionType: TransitionType.none);

    // pagina no encontrada
    router.notFoundHandler = NotFoundHandler.notFoundPage;


   }


}