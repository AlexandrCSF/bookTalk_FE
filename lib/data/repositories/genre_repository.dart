import 'package:booktalk_frontend/data/services/genre_client.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/genre.dart';

class GenreRepository {

  final _client = getIt.get<GenreClient>();

  Future<List<Genre>> getGenreList() async {
    return await _client.getGenreList();
  }

}