import 'package:flutter_movie/data/model/genre.dart';

class GenreResponse {
  final List<Genre> genres;
  final String error;

  GenreResponse(this.genres, this.error);

  factory GenreResponse.fromJson(Map<String, dynamic> data) {
    return GenreResponse(
        (data['genres'] as List).map((e) => new Genre.fromJson(e)), "");
  }

  factory GenreResponse.withError(String error) {
    return GenreResponse(List(), error);
  }
}
