import 'package:albums_route/domain/artist/artist.dart';
import 'package:albums_route/ui/artist/artist_details/artist_details_page.dart';
import 'package:albums_route/ui/artist/artist_list_page/artist_list_page.dart';
import 'package:albums_route/ui/home/home_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

var rootHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return HomePage();
});

var homeHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return HomePage();
});

var artistListHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return ArtistListPage();
});

var artistDetailsHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  var artistLink = params['link'] ?? [Artist.unknown().link];

  return ArtistDetailsPage(artistLink: artistLink.first);
});
