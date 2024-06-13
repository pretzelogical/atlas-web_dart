class User {
  String name = '';
  int age = 0;
  double height = 0.0;

  // User({String nameIn = '', int ageIn = 0, double heightIn = 0.0}) {
  //   this.name = nameIn;
  //   this.age = ageIn;
  //   this.height = heightIn;
  // }

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