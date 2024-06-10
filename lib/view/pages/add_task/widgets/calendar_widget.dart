import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvp_time/controller/calendar/calendar_provider.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends ConsumerWidget {
  const CalendarWidget({
    super.key,
    required this.onDaySelected,
  });

  final void Function(DateTime selectedDay, DateTime focusedDay) onDaySelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: ref.watch(calendarProvider)
          ? Padding(
              padding: EdgeInsets.only(
                bottom: context.height(18),
              ),
              child: SizedBox(
                width: context.width(332),
                child: TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                  availableCalendarFormats: const {
                    CalendarFormat.month: 'Month'
                  },
                  rowHeight: 33,
                  daysOfWeekHeight: 22,
                  headerStyle: HeaderStyle(
                    titleCentered: true,
                    titleTextStyle: context.typography.titleMedium.copyWith(
                      color: AppColorPalette.grey800,
                      fontSize: context.width(16),
                    ),
                    leftChevronMargin: EdgeInsets.zero,
                    rightChevronMargin: EdgeInsets.zero,
                    leftChevronPadding: EdgeInsets.only(
                      left: context.width(6),
                    ),
                    rightChevronPadding: EdgeInsets.only(
                      right: context.width(6),
                    ),
                  ),
                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle: context.typography.titleMedium.copyWith(
                      color: AppColorPalette.grey400,
                      fontSize: context.width(14),
                    ),
                    weekendStyle: context.typography.titleMedium.copyWith(
                      color: AppColorPalette.grey400,
                      fontSize: context.width(14),
                    ),
                  ),
                  calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(
                      color: context.colors.primary,
                      borderRadius: BorderRadius.circular(
                        context.width(6),
                      ),
                    ),
                  ),
                  onDaySelected: (selectedDay, focusedDay) {},
                ),
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
