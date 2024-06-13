import '6-password.dart';

class User {
  int id = 0;
  String name = '';
  Password _user_password = Password(password: '');
  int age = 0;
  double height = 0.0;

  User(
      {int id = 0,
      String name = '',
      int age = 0,
      double height = 0.0,
      String user_password = ''}) {
    this.id = id;
    this.name = name;
    this._user_password = Password(password: user_password);
    this.age = age;
    this.height = height;
  }

  String get user_password => this._user_password.password;
  set user_password(String value) => this._user_password.password = value;

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height'],
        user_password: userJson['user_password']
    );
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
    return (
      'User(id: ${this.id}, name: ${this.name}, age: ${this.age}, '
      'height: ${this.height}, Password: ${this._user_password.isValid()})'
    );
  }
}
