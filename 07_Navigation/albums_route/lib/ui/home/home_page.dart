import 'package:albums_route/ui/app_drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: AppDrawer(
        items: [
          HomeDrawerItem(
            selected: true,
          ),
          ArtistsDrawerItem(),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.check_circle_outline,
              color: Colors.green,
              size: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text('Выберите группу'),
            ),
          ],
        ),
      ),
    );
  }
}
