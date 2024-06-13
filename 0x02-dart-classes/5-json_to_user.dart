class User {
  int id = 0;
  String name = '';
  int age = 0;
  double height = 0.0;

  User({int id = 0, String name = '', int age = 0, double height = 0.0}) {
    this.id = id;
    this.name = name;
    this.age = age;
    this.height = height;
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height']);
  }

  Map toJson() {
    return {
      'id': this.id,
      'name': this.name,
      'age': this.age,
      'height': this.height
    };
  }

  String toString() {
    return 'User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height})';
  }
}
