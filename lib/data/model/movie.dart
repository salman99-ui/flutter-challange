class Movie {
  final int id;
  final double popularity;
  final String title;
  final String poster;
  final String overview;

  Movie(
    this.id,
    this.popularity,
    this.title,
    this.poster,
    this.overview,
  );

  factory Movie.fromJson(Map<String, dynamic> data) {
    return Movie(data['id'], data['popularity'], data['title'],
        data['backdrop_path'], data['overview']);
  }
}
