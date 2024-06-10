import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_task_sheet_constants.g.dart';

final class AddTaskSheetConstants {
  final String txtHead = "New Task";
  final String txtyesterDay = "Yesterday";
  final String txtToday = "Today";
  final String txtTomorrow = "Tomorrow";
  final String txtProject = "Project";
  final String txtTask = "Task";
  final String txtTaskDescription = "Task Description ";
  final String txtDescriptionHint = "Add Description..";
  final String txtSelectHours = "Select hours";
  final String txtTaskPoints = "Task Points";
  final String txtBtn = "Create";
}

@riverpod
AddTaskSheetConstants addTaskSheetConstants(AddTaskSheetConstantsRef ref) {
  return AddTaskSheetConstants();
}
