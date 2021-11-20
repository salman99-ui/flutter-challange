import 'package:flutter_movie/data/model/movie.dart';

class MovieResponse {
  final List<Movie> movies;
  final String error;

  MovieResponse(this.movies, this.error);

  factory MovieResponse.fromJson(Map<String, dynamic> data) {
    return MovieResponse(
        (data['results'] as List).map((e) => new Movie.fromJson(e)).toList(),
        "");
  }

  factory MovieResponse.withError(String error) {
    return MovieResponse(List(), error);
  }
}
