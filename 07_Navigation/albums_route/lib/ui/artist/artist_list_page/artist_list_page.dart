import 'package:albums_route/config/application.dart';
import 'package:albums_route/domain/artist/artist.dart';
import 'package:albums_route/ui/app_drawer/app_drawer.dart';
import 'package:albums_route/ui/artist/artist_details/artist_details_page.dart';
import 'package:albums_route/ui/status_view/status_view.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class ArtistListPage extends StatefulWidget {
  static const String routeName = '/artists';

  const ArtistListPage({Key? key}) : super(key: key);

  @override
  State<ArtistListPage> createState() => _ArtistListPageState();
}

class _ArtistListPageState extends State<ArtistListPage> {
  bool loaded = false;
  late List<Artist> artists;

  @override
  void initState() {
    super.initState();

    Application.artistsFetcher.fetch().then(
          (data) => setState(() {
            loaded = true;
            artists = data;
          }),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artists'),
      ),
      drawer: AppDrawer(
        items: [
          HomeDrawerItem(),
          ArtistsDrawerItem(
            selected: true,
          ),
        ],
      ),
      body: loaded
          ? Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: artists.length,
                itemBuilder: (BuildContext context, int index) {
                  var artist = artists[index];
                  return GestureDetector(
                    onTap: () {
                      Application.router.navigateTo(
                        context,
                        '${ArtistDetailsPage.prepareRouteParams(artist.link)}',
                        transition: TransitionType.custom,
                        transitionDuration: Duration(seconds: 2),
                        transitionBuilder: (context, animation, secondaryAnimation, child) {
                          return RotationTransition(
                            alignment: Alignment.bottomLeft,
                            turns: Tween<double>(
                              begin: -0.25,
                              end: 0.0,
                            ).animate(animation),
                            child: child,
                          );
                        },
                      );
                    },
                    child: Container(
                      color: index % 2 == 0 ? null : Colors.green.shade200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(artist.name),
                      ),
                    ),
                  );
                },
              ),
            )
          : LoadingStatusView(),
    );
  }
}
