import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvp_time/core/constants/task_details_page/task_details_constants.dart';
import 'package:mvp_time/view/pages/task_details/widgets/start_txt_widget.dart';

class DateTimeWidget extends ConsumerWidget {
  const DateTimeWidget({
    super.key,
    required this.args,
  });

  final Map<String, String> args;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        // width spacer
        const Spacer(flex: 1),
        // date
        StartTextWidget(
          labelText: ref.watch(taskDetailsConstantsProvider).txtStartDate,
          text: args["date"] ?? "",
        ),
        // width spacer
        const Spacer(flex: 2),
        // time
        StartTextWidget(
          labelText: ref.watch(taskDetailsConstantsProvider).txtStartTime,
          text: args["time"] ?? "",
        ),
        // width spacer
        const Spacer(flex: 1),
      ],
    );
  }
}
