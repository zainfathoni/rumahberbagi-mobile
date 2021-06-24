extension EmailValidator on String? {
  bool isValidEmail() {
    return RegExp(r'[^@ \t\r\n]+@[^@ \t\r\n]+\.[^@ \t\r\n]+').hasMatch(this!);
  }
}
