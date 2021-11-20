import 'package:flutter_movie/data/model/movie.dart';
import 'package:flutter_movie/data/model/movie_response.dart';
import 'package:flutter_movie/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class MoviesListBloc {
  final BehaviorSubject<List<Movie>> _subject = BehaviorSubject();

  getMovies() async {
    List<Movie> response = await MovieRepository.getPopularMovies();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<List<Movie>> get subject => _subject;
}

final moviesBloc = MoviesListBloc();
