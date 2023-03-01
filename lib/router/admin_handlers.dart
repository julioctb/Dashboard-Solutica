import 'package:fluro/fluro.dart';
import 'package:solutica/ui/views/dashboard_view.dart';

class AdminHandlers {

  static Handler dashboard = Handler(
    handlerFunc: (context, params) {
      return const DashboardView();
    }
    );

  

}