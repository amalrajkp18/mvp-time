import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_page_constants.g.dart';

final class LoginPageConstants {
  final String txtHead = "Welcome back";
  final String txtSub = "Pleas Enter your email and password to login";
  final String txtEmail = "Email address";
  final String txtPassword = "Passwoard";
  final String txtBtn = "Login";
}

@riverpod
LoginPageConstants loginPageConstants(LoginPageConstantsRef ref) {
  return LoginPageConstants();
}
