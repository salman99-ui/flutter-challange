import 'package:flutter_movie/data/model/person.dart';

class PersonResponse {
  final List<Person> persons;
  final String error;

  PersonResponse(this.persons, this.error);

  factory PersonResponse.fromJson(Map<String, dynamic> data) {
    return PersonResponse(
        (data['results'] as List).map((e) => new Person.fromJson(e)).toList(),
        "");
  }

  factory PersonResponse.withError(String data) {
    return PersonResponse(List(), data);
  }
}
