import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvp_time/core/constants/notification_page/notification_page_constants.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';
import 'package:mvp_time/view/pages/notification/widgets/notification_btn_widget.dart';

class NotificationListTileWidget extends ConsumerWidget {
  const NotificationListTileWidget({
    super.key,
    required this.image,
    required this.userName,
    required this.textSub,
    required this.content,
    required this.textHead,
  });

  final String image;
  final String userName;
  final String textSub;
  final String content;
  final String textHead;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      height: context.height(216),
      decoration: BoxDecoration(
        color: AppColorPalette.white100,
        borderRadius: BorderRadius.circular(context.width(8)),
        boxShadow: [
          BoxShadow(
            color: AppColorPalette.grey600.withOpacity(0.1),
            blurRadius: 15,
            spreadRadius: 0,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // top section
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.width(10),
              vertical: context.height(9),
            ),
            child: Row(
              children: [
                // image
                Container(
                  width: context.width(40),
                  height: context.height(40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      context.width(40),
                    ),
                    border: Border.all(
                      color: const Color(0xFFDFDFDF),
                      width: 1,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // width space
                WhiteSpacer()(context, width: 16),
                // userName
                Text(
                  userName,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: context.width(14),
                    fontWeight: FontWeight.w500,
                    color: context.colors.primary,
                  ),
                )
              ],
            ),
          ),
          // height spacer
          WhiteSpacer()(context, height: 10),
          // sub text
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.width(10),
            ),
            child: Text(
              content,
              style: context.typography.bodyLight,
            ),
          ),
          // horizontal line
          const Divider(
            color: Color(0xFFF2F2F2),
            thickness: 1,
          ),
          // text sub head
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.width(10),
            ),
            child: Text(
              textHead,
              style: context.typography.bodyRegular.copyWith(
                color: context.colors.primary,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          // preview text
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.width(10),
            ),
            child: Text(
              textSub,
              style: context.typography.bodyLight,
            ),
          ),
          // height spacer
          WhiteSpacer()(context, height: 16),
          // btns
          Padding(
            padding: EdgeInsets.only(
              left: context.width(10),
            ),
            child: Row(
              children: [
                // approve btn
                NotificationBtWidget(
                  text: ref
                      .watch(notificationPageConstantsProvider)
                      .txtBtnApprove,
                  onPressed: () {},
                ),
                // width spacer
                WhiteSpacer()(context, width: 24),
                // deny btn
                NotificationBtWidget(
                  isOutlined: true,
                  text: ref.watch(notificationPageConstantsProvider).txtBtnDeny,
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
