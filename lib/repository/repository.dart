import 'dart:convert';

import 'package:flutter_movie/data/model/genre.dart';
import 'package:flutter_movie/data/model/movie.dart';
import 'package:http/http.dart' as http;

class MovieRepository {
  static Future<List<Movie>> getPopularMovies() async {
    var response = await http.get(Uri.parse(
        "https://api.themoviedb.org/3/movie/popular?api_key=917ed3953725cf7756154c0a447017d1&page=1"));
    var data = jsonDecode(response.body)['results'];

    List<Movie> movies = (data as List).map((e) => Movie.fromJson(e)).toList();

    return movies;
  }

  static Future<List<Genre>> getMovieGenre({String id = '28'}) async {
    var response = await http.get(Uri.parse(
        "https://api.themoviedb.org/3/discover/movie?api_key=917ed3953725cf7756154c0a447017d1&with_genres=$id"));

    var data = jsonDecode(response.body)['results'];

    List<Genre> movies = (data as List).map((e) => Genre.fromJson(e)).toList();

    return movies;
  }
}
