import 'package:albums_route/config/application.dart';
import 'package:albums_route/config/routes.dart';
import 'package:albums_route/domain/artist/artists_fetcher.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class AppComponent extends StatefulWidget {
  @override
  State createState() {
    return AppComponentState();
  }
}

class AppComponentState extends State<AppComponent> {
  AppComponentState() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
    Application.artistsFetcher = ArtistsFetcher();
  }

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator,
    );

    return app;
  }
}
