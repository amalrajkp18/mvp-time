import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'projects_page_constants.g.dart';

final class ProjectsPageConstants {
  final String txtHead = "Projects";
  final String txtSearchFieldHint = "Search your task";
  final String txtHighPriority = "High priority";
  final String txtPending = "Pending";
  final String txtProgress = "Progress";
  final String txtBused = "Bused";
  final String txtTwoPlus = "2+";
}

@riverpod
ProjectsPageConstants projectsPageConstants(ProjectsPageConstantsRef ref) {
  return ProjectsPageConstants();
}
