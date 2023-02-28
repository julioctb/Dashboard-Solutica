import 'package:fluro/fluro.dart';
import 'package:solutica/ui/views/nopagefound_view.dart';


class NotFoundHandler {

  static Handler notFoundPage = Handler(
    handlerFunc: (context, params) {
      return const NoPageFound();
    }
    );

  

}