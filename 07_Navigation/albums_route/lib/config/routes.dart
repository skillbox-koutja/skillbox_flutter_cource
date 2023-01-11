import 'package:albums_route/config/route_handlers.dart';
import 'package:albums_route/ui/artist/artist_details/artist_details_page.dart';
import 'package:albums_route/ui/artist/artist_list_page/artist_list_page.dart';
import 'package:albums_route/ui/home/home_page.dart';
import 'package:albums_route/ui/not_found/not_found.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  static String root = '/';

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return NotFoundPage();
    });
    router.define(root, handler: rootHandler);
    router.define(HomePage.routeName, handler: rootHandler);
    router.define(ArtistListPage.routeName, handler: artistListHandler);
    router.define(ArtistDetailsPage.routeName, handler: artistDetailsHandler);
  }
}
