import 'package:flutter/material.dart';
import 'package:hotels/config/application.dart';
import 'package:hotels/config/routes.dart';
import 'package:hotels/ui/status_view/status_view.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Application.router.navigateTo(
          context,
          Routes.root,
          replace: true,
        );
      },
      child: const ErrorStatusView(errorMessage: 'Route was not found !!!'),
    );
  }
}
