import 'package:albums_route/config/application.dart';
import 'package:albums_route/config/routes.dart';
import 'package:albums_route/ui/status_view/status_view.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Application.router.navigateTo(
          context,
          Routes.root,
        );
      },
      child: ErrorStatusView(errorMessage: 'Route was not found !!!'),
    );
    ;
  }
}
