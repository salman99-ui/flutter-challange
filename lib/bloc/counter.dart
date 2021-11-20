import 'package:rxdart/rxdart.dart';

class CounterBloc {
  int number = 0;
  BehaviorSubject<int> _subject;

  CounterBloc() {
    _subject = BehaviorSubject.seeded(number);
  }

  BehaviorSubject<int> get subject => _subject;

  void increment() {
    number++;
    _subject.sink.add(number);
  }

  void decrement() {
    number--;
    _subject.sink.add(number);
  }

  void dispose() {
    _subject.close();
  }
}
