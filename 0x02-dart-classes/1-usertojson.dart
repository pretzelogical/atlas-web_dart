class User {
  String name = '';
  int age = 0;
  double height = 0.0;

  User({String name = '', int age = 0, double height = 0.0}) {
    this.name = name;
    this.age = age;
    this.height = height;
  }

  Map toJson() {
    return {
      'name': this.name,
      'age': this.age,
      'height': this.height
    };
  }
}