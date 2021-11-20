class Person {
  final int id;
  final double popularity;
  final String name;
  final String profileImg;
  final String known;

  Person(this.id, this.popularity, this.name, this.profileImg, this.known);

  factory Person.fromJson(Map<String, dynamic> data) {
    return Person(data['id'], data['popularity'], data['name'],
        data['profile_path'], data['known_for_department']);
  }
}
