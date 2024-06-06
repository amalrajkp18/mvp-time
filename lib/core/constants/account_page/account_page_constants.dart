import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_page_constants.g.dart';

final class AccountPageConstants {
  final String txtNotification = "Notifications";
  final String txtDarkMode = "Dark mode";
  final String txtLogout = "Logout";
  final String txtPassword = "Password";
  final String txtEdit = "Edit";
  final String txtEditPassword = "Edit Password";
  final String txtEditPasswordSub =
      "Please enter your email account to send code !";
  final String txtEmail = "Email";
  final String txtBtnSubmit = "Submit";
  final String txtLogoutSub = "Are You sure you want to logout?";
  final String txtBtnYes = "Yes";
  final String txtBtnNo = "NO";
  final String txtStar = "***********";
}

@riverpod
AccountPageConstants accountPageConstants(AccountPageConstantsRef ref) {
  return AccountPageConstants();
}
