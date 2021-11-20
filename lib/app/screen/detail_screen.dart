import 'package:flutter/material.dart';
import 'package:flutter_movie/data/model/genre.dart';

class Detail extends StatelessWidget {
  Genre genre;

  Detail(this.genre);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://image.tmdb.org/t/p/w500" + genre.backdrop))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(genre.title),
          ),
        ],
      )),
    ));
  }
}
