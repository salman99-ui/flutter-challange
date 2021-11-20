import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie/app/screen/detail_screen.dart';
import 'package:flutter_movie/bloc/movie_bloc_state.dart';
import 'package:flutter_movie/data/model/genre.dart';

class GenreMovie extends StatefulWidget {
  @override
  _GenreMovieState createState() => _GenreMovieState();
}

class _GenreMovieState extends State<GenreMovie> {
  MovieBloc _movieBloc = MovieBloc();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [genre(), movielist()],
      ),
    );
  }

  Container movielist() {
    return Container(
      child: StreamBuilder(
          stream: _movieBloc.subject.stream,
          builder: (context, snapshot) {
            if (snapshot.hasData) return listMovie(snapshot.data);

            return _showWaiting();
          }),
    );
  }

  Container genre() {
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
              child: Chip(
                  label: Text("Action"),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7))),
          GestureDetector(
              onTap: () {
                _movieBloc.getGenreMovieAdvanture('12');
              },
              child: Chip(
                  label: Text("Advanture"),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10))),
          GestureDetector(
              child: Chip(
                  label: Text("Horor"),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10))),
          GestureDetector(
              onTap: () {
                _movieBloc.getGenreMovieAdvanture('35');
              },
              child: Chip(
                  label: Text("Commedy"),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10))),
          GestureDetector(
              onTap: () {
                _movieBloc.getGenreMovieAdvanture('35');
              },
              child: Chip(
                  label: Text("Commedy"),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10))),
          GestureDetector(
              onTap: () {
                _movieBloc.getGenreMovieAdvanture('35');
              },
              child: Chip(
                  label: Text("Commedy"),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10))),
        ],
      ),
    );
  }

  Container listMovie(List<Genre> data) {
    return Container(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: data.length,
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Detail(data[index])));
                  },
                  child: Container(
                    width: 130,
                    margin: EdgeInsets.only(right: 12),
                    child: Column(children: [
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://image.tmdb.org/t/p/w500" +
                                        data[index].backdrop))),
                      ),
                      Container(
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                data[index].title,
                                style: TextStyle(color: Colors.white),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                )));
  }

  Widget _showWaiting() {
    return Center();
  }
}
