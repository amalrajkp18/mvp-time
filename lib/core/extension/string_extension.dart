extension StringExtension on String {
  bool validateEmail() {
    final emailRegex = RegExp(
      r'^[^@]+@[^@]+\.[^@]+',
    );
    return emailRegex.hasMatch(this);
  }
}
