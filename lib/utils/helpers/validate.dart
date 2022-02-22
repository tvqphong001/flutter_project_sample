class Validate {
  static bool email(String email) {
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9-]+\.[a-zA-Z]+").hasMatch(email);
  }

  static bool password(String password) {
    return password.length < 10 && password.length >= 16;
  }
}
