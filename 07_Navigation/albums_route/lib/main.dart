import 'package:albums_route/domain/artist/artist.dart';
import 'package:albums_route/domain/artist/artists_fetcher.dart';
import 'package:albums_route/ui/app/app_component.dart';
import 'package:albums_route/ui/home/home_page.dart';
import 'package:albums_route/ui/status_view/status_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppComponent());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<Artist>> fetchArtists = ArtistsFetcher().fetch();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Artist>>(
        future: fetchArtists, // a previously-obtained Future<String> or null
        builder: (BuildContext context, AsyncSnapshot<List<Artist>> snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else if (snapshot.hasError) {
            return ErrorStatusView(errorMessage: snapshot.error.toString());
          }

          return LoadingStatusView();
        },
      ),
    );
  }
}
