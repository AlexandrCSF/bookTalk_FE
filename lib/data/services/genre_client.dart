import 'package:booktalk_frontend/data/urls/genre_urls.dart';
import 'package:booktalk_frontend/models/genre.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'genre_client.g.dart';

@RestApi()
abstract class GenreClient {

  factory GenreClient(Dio dio, {String baseUrl}) = _GenreClient;

  @GET(GenreUrls.getGenreList)
  Future<List<Genre>> getGenreList();

}