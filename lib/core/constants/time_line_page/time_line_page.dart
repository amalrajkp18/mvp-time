import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'time_line_page.g.dart';

final class TimeLinePage {
  final String txtHead = "Time Line";
  final String txtProgress = "Progress";
  final String txtMeetingWithClient = "Meeting with client";
  final String txtHighPriority = "High priority";
  final String txtLowPriority = "Low priority";
  final String txtTime = "Time";
}

@riverpod
TimeLinePage timeLinePage(TimeLinePageRef ref) {
  return TimeLinePage();
}
