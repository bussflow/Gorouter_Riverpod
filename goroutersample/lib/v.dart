import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider((ref) => 0);

final boolProvider = StateProvider((ref) => Student("gaurav", 10));

class Student {
  String? name;
  int? age;

  Student(name, age) {
    this.name = name;
    this.age = age;
  }

  updateAge(int a) {
    this.age = (this.age! + a)!;
  }
}
