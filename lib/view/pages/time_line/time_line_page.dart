import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvp_time/controller/bottom_nav/bottom_nav_index_provider.dart';
import 'package:mvp_time/core/constants/time_line_page/time_line_page.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';
import 'package:mvp_time/core/widgets/app_back_btn_widget.dart';
import 'package:mvp_time/view/pages/task_details/task_details_page.dart';
import 'package:mvp_time/view/pages/time_line/widgets/meeting_field_widget.dart';
import 'package:mvp_time/view/widgets/task_widget.dart';

// sample data
final Map<String, dynamic> task = {
  "percentage": '64%',
  "title": "MVP Mobile App Design",
  "subTxt": "Task planner App with clean and modern... ",
  "progrees": 0.45,
  "imageList": [
    "assets/images/img_user1.png",
    "assets/images/img_user2.png",
    "assets/images/img_user3.png",
    "assets/images/img_user4.png",
  ],
};

final List<Map<String, String>> meetingList = [
  {
    "time": "11:00Pm",
    "priority": "High priority",
    "link": "www.https://zoom.us/",
  },
  {
    "time": "11:00Pm",
    "priority": "Low priority",
    "link": "www.https://zoom.us/",
  }
];

class TimeLinePage extends HookConsumerWidget {
  const TimeLinePage({super.key});
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
          ref.watch(timeLinePageConstantsProvider).txtHead,
          style: context.typography.titleBold,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //date & time
              Padding(
                padding: EdgeInsets.only(
                  top: context.height(8),
                  left: context.width(10),
                ),
                child: SizedBox(
                  width: context.width(150),
                  child: Text(
                    "May,18 24,Tusday",
                    style: context.typography.bodySemibold.copyWith(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              // height spacer
              WhiteSpacer()(context, height: 20),
              //task timeline list
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return TaskWidget(
                    percentage: task["percentage"],
                    title: task["title"],
                    subTxt: task["subTxt"],
                    progrees: task["progrees"],
                    imageList: task["imageList"],
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
                  );
                },
                separatorBuilder: (context, index) => index == 0
                    ? GridView.builder(
                        padding:
                            EdgeInsets.symmetric(vertical: context.height(20)),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: context.width(24),
                        ),
                        itemBuilder: (context, index) => MeetingFieldWidget(
                          moreTap: () {},
                          copyTap: () {},
                          time: meetingList[index]["time"]!,
                          priority: meetingList[index]["priority"]!,
                          link: meetingList[index]["link"]!,
                        ),
                        itemCount: 2,
                      )
                    : WhiteSpacer()(context, height: 20),
                itemCount: 3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
