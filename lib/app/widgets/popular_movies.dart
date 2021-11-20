import 'package:flutter/material.dart';
import 'package:flutter_movie/repository/repository.dart';

class PopularMovies extends StatefulWidget {
  @override
  _PopularMoviesState createState() => _PopularMoviesState();
}

class _PopularMoviesState extends State<PopularMovies> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: FutureBuilder(
          future: MovieRepository.getPopularMovies(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Text(''),
              );
            } else {
              var data = snapshot.data;
              return PageView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) => Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('ok');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://image.tmdb.org/t/p/w500" +
                                              data[index].poster),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 150,
                                padding: EdgeInsets.only(left: 10),
                                child: Center(
                                  child: Text(
                                    data[index].title,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ));
            }
          }),
    );
  }
}
