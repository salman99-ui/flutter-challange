import 'package:flutter_movie/data/model/genre.dart';
import 'package:flutter_movie/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class MovieBloc {
  BehaviorSubject<List<Genre>> _subject;

  MovieBloc() {
    _subject = BehaviorSubject.seeded(null);
    _init();
  }

  BehaviorSubject<List<Genre>> get subject => _subject;

  Future _init() async {
    var data = await MovieRepository.getMovieGenre();

    _subject.sink.add(data);
  }

  Future getGenreMovieAdvanture(String id) async {
    _subject.sink.add(null);

    var data = await MovieRepository.getMovieGenre(id: id);

    _subject.sink.add(data);
  }

  void dispose() {
    _subject.close();
  }
}
