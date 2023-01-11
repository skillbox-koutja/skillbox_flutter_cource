import 'package:albums_route/config/application.dart';
import 'package:albums_route/domain/artist/artist.dart';
import 'package:albums_route/ui/status_view/status_view.dart';
import 'package:flutter/material.dart';

class ArtistDetailsPage extends StatefulWidget {
  static const String routeName = '/artists/:link/details';
  static String prepareRouteParams(String link) => '/artists/${link}/details';

  final String artistLink;

  const ArtistDetailsPage({required this.artistLink, Key? key}) : super(key: key);

  @override
  State<ArtistDetailsPage> createState() => _ArtistDetailsPageState();
}

class _ArtistDetailsPageState extends State<ArtistDetailsPage> {
  bool loaded = false;
  late Artist artist;

  @override
  void initState() {
    super.initState();

    Application.artistsFetcher.fetch().then(
          (data) => setState(() {
            loaded = true;
            artist = data.firstWhere(
              (element) => element.link == widget.artistLink,
              orElse: () {
                return Artist.unknown();
              },
            );
          }),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: loaded ? Text(artist.name) : Text(''),
      ),
      body: loaded
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(artist.about),
            )
          : LoadingStatusView(),
    );
  }
}
