import 'package:flutter/material.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/view/pages/task_details/widgets/task_grid_tile.dart';

class ActivityGridWidget extends StatelessWidget {
  const ActivityGridWidget({super.key, required this.args});

  final Map<String, String> args;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(
          horizontal: context.width(40), vertical: context.height(30)),
      crossAxisCount: 2,
      crossAxisSpacing: context.width(65),
      mainAxisSpacing: context.height(32),
      children: [
        TaskGridTile(
          title: args["points"] ?? "",
          subTitle: "Points",
        ),
        TaskGridTile(
          title: args["hours"] ?? "",
          subTitle: "Hours",
        ),
        TaskGridTile(
          title: "Approved",
          subTitle: args["approved"] ?? "",
        )
      ],
    );
  }
}
