class Password {
  String password = '';

  bool isValid() {
    if (this.password.length < 8 || this.password.length > 16) {
      return false;
    }

    if (!(password.contains(RegExp(r'[A-Z]')) &&
        password.contains(RegExp(r'[a-z]')) &&
        password.contains(RegExp(r'\d')))) {
      return false;
    }

    return true;
  }

  String toString() {
    return 'Your Password is: ${this.password}';
  }
}
