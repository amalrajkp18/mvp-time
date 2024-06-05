import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task_details_constants.g.dart';

final class TaskDetailsConstants {
  final String txtProjectName = "Project name";
  final String txtTaskDetails = "Task details";
  final String txtDescription = "Description";
  final String txtPoints = "Points";
  final String txtHours = "Hours";
  final String txtApproved = "Approved";
  final String txtEditTask = "Edit task";
  final String txtDuplicateTask = "Duplicate task";
  final String txtDeleteTask = "Delete task";
  final String txtStartDate = "Start date";
  final String txtStartTime = "Start time";
}

@riverpod
TaskDetailsConstants taskDetailsConstants(TaskDetailsConstantsRef ref) {
  return TaskDetailsConstants();
}
