import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvp_time/core/constants/image_constants/image_constants.dart';
import 'package:mvp_time/core/constants/notification_page/notification_page_constants.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';
import 'package:mvp_time/core/widgets/app_back_btn_widget.dart';
import 'package:mvp_time/view/pages/notification/widgets/notification_list_tile_widget.dart';

class NotificationPage extends ConsumerWidget {
  const NotificationPage({super.key});

  static const routeName = "/notification";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBackBtnWidget(
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          ref.watch(notificationPageConstantsProvider).txtHead,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: context.height(33),
          right: context.width(16),
          left: context.width(16),
        ),
        child: ListView.separated(
          // notification tile
          itemBuilder: (context, index) => NotificationListTileWidget(
            image: ref.watch(imageConstantsProvider).imgArabyAi,
            title: "Araby ai",
            content: "Task planner App with clean and modern... ",
            textHead: "Link preview ",
            textSub: "www.update username home and profile, edit password",
            onPressedApprove: () {},
            onPressedDeny: () {},
          ),
          separatorBuilder: (context, index) => WhiteSpacer()(
            context,
            height: 16,
          ),
          itemCount: 3,
        ),
      ),
    );
  }
}
