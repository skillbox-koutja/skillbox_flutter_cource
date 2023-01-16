import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hotels/api/mocky/api.dart';
import 'package:hotels/config/application.dart';
import 'package:hotels/config/routes.dart';

class AppComponent extends StatefulWidget {
  const AppComponent({super.key});

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
    Application.api = Api();
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
