import 'package:albums_route/domain/artist/artist.dart';
import 'package:albums_route/fetch_file.dart';

class ArtistsFetcher {
  Future<List<Artist>> fetch() async {
    final response = await fetchJsonFromAssetsFile('artists.json');

    return response.map((jsonArtistData) => Artist.fromMap(jsonArtistData)).toList();
  }
}
