import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_constants.g.dart';

class HomePageConstants {
  final String txtHead = "Let’s Start your task";
  final String txtSearchFieldHint = "Search your task";
  final String txtTab0 = "Today";
  final String txtTab1 = "History";
}

@riverpod
HomePageConstants homePageConstants(HomePageConstantsRef ref) {
  return HomePageConstants();
}
