class Genre {
  int id;
  String title;
  String overview;
  String backdrop;

  Genre(this.id, this.title, this.overview, this.backdrop);

  factory Genre.fromJson(Map<String, dynamic> data) {
    return Genre(data['id'], data['original_title'], data['overview'],
        data['backdrop_path']);
  }
}
