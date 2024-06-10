import 'package:flutter/material.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';
import 'package:mvp_time/view/pages/home/widgets/task_tile_widget.dart';
import 'package:mvp_time/view/pages/task_details/task_details_page.dart';

class TodayTasksList extends StatelessWidget {
  const TodayTasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(
        left: context.width(16),
        right: context.width(16),
        top: context.height(16),
      ),
      itemBuilder: (context, index) => TaskTileWidget(
        dateAndTime: "Apr 20-2024 , 10:00 am",
        hours: "5 hours",
        icon: index == 0 ? Icons.play_arrow : Icons.pause,
        indicatorText: "UI ux Design",
        title: "Design Task management App",
        sub: "Redesign fashion app for up dribble",
        onTap: () {
          Navigator.pushNamed(
            context,
            TaskDetailsPage.routeName,
            arguments: {
              "projectName": "Mvp Task manager",
              "taskDeatails": "Design Task management App ",
              "description":
                  "Design Task management App  Design Task management App  Design Task management App  Design Task management App  Design Task",
              "points": "5",
              "hours": "5",
              "approved": "Ali",
            },
          );
        },
      ),
      separatorBuilder: (context, index) => WhiteSpacer()(context, height: 16),
      itemCount: 2,
    );
  }
}
