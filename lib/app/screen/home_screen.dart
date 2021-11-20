import 'package:flutter/material.dart';
import 'package:flutter_movie/app/widgets/genre_movies.dart';
import 'package:flutter_movie/app/widgets/popular_movies.dart';

class HomeScreenApp extends StatefulWidget {
  @override
  _HomeScreenAppState createState() => _HomeScreenAppState();
}

class _HomeScreenAppState extends State<HomeScreenApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            titleCategory("Popular Movie", false),
            PopularMovies(),
            titleCategory("Movie Genre", true),
            GenreMovie()
          ],
        ),
      ),
    );
  }

  Container titleCategory(String title, bool top) => Container(
        padding: EdgeInsets.only(bottom: 20, top: top ? 20 : 0),
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Poppins",
              fontSize: 24,
              fontWeight: FontWeight.w500,
              letterSpacing: 1),
        ),
      );
}
