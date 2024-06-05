import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_nav_constants.g.dart';

final class BottomNavConstants {
  final String txtHome = "Home";
  final String txtProject = "Projects";
  final String txtTimeLine = "Time Line";
  final String txtAccount = "Account";
}

@riverpod
BottomNavConstants bottomNavConstants(BottomNavConstantsRef ref) {
  return BottomNavConstants();
}
