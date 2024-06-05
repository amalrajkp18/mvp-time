import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_page_constants.g.dart';

final class NotificationPageConstants {
  final String txtHead = "Notification";
  final String txtBtnApprove = "Approve";
  final String txtBtnDeny = "Deny";
}

@riverpod
NotificationPageConstants notificationPageConstants(
    NotificationPageConstantsRef ref) {
  return NotificationPageConstants();
}
