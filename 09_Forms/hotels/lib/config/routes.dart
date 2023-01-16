import 'package:fluro/fluro.dart';
import 'package:hotels/config/route_handlers.dart';
import 'package:hotels/ui/hotel/details/page.dart';
import 'package:hotels/ui/hotel/list/page.dart';
import 'package:hotels/ui/not_found/not_found.dart';

class Routes {
  static String root = '/';

  static void configureRoutes(FluroRouter router) {
    router
      ..notFoundHandler = Handler(handlerFunc: (context, params) {
        return const NotFoundPage();
      })
      ..define(root, handler: rootHandler)
      ..define(HotelListPage.routeName, handler: hotelListHandler)
      ..define(HotelDetailsPage.routeName, handler: hotelDetailsHandler);
  }
}
