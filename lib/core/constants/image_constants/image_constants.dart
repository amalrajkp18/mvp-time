import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_constants.g.dart';

final class ImageConstants {
  static const String basePath = "assets/images/img_";

  final String imgMvpLogo = "${basePath}mvp.png";
  final String imgNotification = "${basePath}notification.png";
  final String imgUserOne = "${basePath}user1.png";
  final String imgUserTwo = "${basePath}user2.png";
  final String imgUserThree = "${basePath}user3.png";
  final String imgUserFour = "${basePath}user4.png";
}

@riverpod
ImageConstants imageConstants(ImageConstantsRef ref) {
  return ImageConstants();
}
