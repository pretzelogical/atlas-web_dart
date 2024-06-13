class Password {
  String _password = '';

  Password({String password = ''}) {
    this._password = password;
  }

  String get password => this._password;
  set password(String val) => this._password = val;

  bool isValid() {
    if (this._password.length < 8 || this._password.length > 16) {
      return false;
    }

    if (!(_password.contains(RegExp(r'[A-Z]')) &&
        _password.contains(RegExp(r'[a-z]')) &&
        _password.contains(RegExp(r'\d')))) {
      return false;
    }

    return true;
  }

  String toString() {
    return 'Your Password is: ${this._password}';
  }
}
