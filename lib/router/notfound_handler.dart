import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'package:solutica/providers/sidemenu_providers.dart';

import 'package:solutica/ui/views/nopagefound_view.dart';


class NotFoundHandler {

  static Handler notFoundPage = Handler(
    handlerFunc: (context, params) {

      Provider.of<SideMenuProvider>(context!, listen: false).currentPageUrl('/404');

      return const NoPageFound();
    }
    );

  

}