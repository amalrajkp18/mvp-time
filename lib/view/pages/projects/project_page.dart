import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvp_time/controller/bottom_nav/bottom_nav_index_provider.dart';
import 'package:mvp_time/core/constants/projects_page/projects_page_constants.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';
import 'package:mvp_time/core/widgets/app_back_btn_widget.dart';
import 'package:mvp_time/view/pages/task_details/task_details_page.dart';
import 'package:mvp_time/view/widgets/search_field_widget.dart';
import 'package:mvp_time/view/widgets/task_summary_widget.dart';

// sample list
final List<Map<String, dynamic>> taskList = [
  {
    "percentage": '64%',
    "title": "Kudos Website ",
    "subTxt": "Task planner App with clean and modern... ",
    "progrees": 0.45,
    "imageList": [
      "assets/images/img_user1.png",
      "assets/images/img_user2.png",
      "assets/images/img_user3.png",
      "assets/images/img_user4.png",
    ],
    "image": "assets/images/img_kudos.png",
    "isBused": false,
  },
  {
    "percentage": '64%',
    "title": "Kudos Website ",
    "subTxt": "Task planner App with clean and modern... ",
    "progrees": 0.45,
    "imageList": [
      "assets/images/img_user1.png",
      "assets/images/img_user2.png",
    ],
    "image": "assets/images/img_araby_ai.png",
    "isBused": true,
  },
  {
    "percentage": '64%',
    "title": "Kudos Website ",
    "subTxt": "Task planner App with clean and modern... ",
    "progrees": 0.45,
    "imageList": [
      "assets/images/img_user1.png",
      "assets/images/img_user2.png",
      "assets/images/img_user3.png",
      "assets/images/img_user4.png",
    ],
    "image": "assets/images/img_kudos.png",
    "isBused": false,
  }
];

class ProjectsPage extends HookConsumerWidget {
  const ProjectsPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBackBtnWidget(
          onTap: () {
            ref.read(bottonNavIndexProvider.notifier).state = 0;
          },
        ),
        title: Text(
          ref.watch(projectsPageConstantsProvider).txtHead,
          style: context.typography.titleBold,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.width(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // height spacer
            WhiteSpacer()(context, height: 16),
            // search field
            SearchFieldWidget(
              onChanged: (value) {},
            ),
            // height spacer
            WhiteSpacer()(context, height: 24),
            //project Tiles
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => TaskSummaryWidget(
                  percentage: taskList[index]["percentage"],
                  title: taskList[index]["title"],
                  subTxt: taskList[index]["subTxt"],
                  progrees: taskList[index]["progrees"],
                  imageList: taskList[index]["imageList"],
                  image: taskList[index]["image"],
                  isBused: taskList[index]["isBused"],
                  onTap: () {
                    // navigate to task details
                    Navigator.pushNamed(
                      context,
                      TaskDetailsPage.routeName,
                      arguments: {
                        "projectName": "Mvp Task manager",
                        "taskDeatails": "Design Task management App ",
                        "description":
                            "Design Task management App  Design Task management App  Design Task management App  Design Task management App  Design Task",
                        "date": "4Apr2024",
                        "time": " 04:45PM",
                      },
                    );
                  },
                ),
                separatorBuilder: (context, index) =>
                    WhiteSpacer()(context, height: 16),
                itemCount: taskList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
