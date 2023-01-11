import 'package:albums_route/config/application.dart';
import 'package:albums_route/ui/artist/artist_list_page/artist_list_page.dart';
import 'package:albums_route/ui/home/home_page.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final List<Widget> items;

  const AppDrawer({required this.items, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: items,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ArtistsDrawerItem extends StatelessWidget {
  final bool selected;

  const ArtistsDrawerItem({this.selected = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (selected) {
          return;
        }
        Application.router.navigateTo(
          context,
          '${ArtistListPage.routeName}',
        );
      },
      child: ListTile(
        selected: selected,
        title: Text('Группы'),
      ),
    );
  }
}

class HomeDrawerItem extends StatelessWidget {
  final bool selected;

  const HomeDrawerItem({this.selected = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (selected) {
          return;
        }
        Application.router.navigateTo(
          context,
          '${HomePage.routeName}',
        );
      },
      child: ListTile(
        selected: selected,
        title: Text('Home'),
      ),
    );
  }
}
