import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvp_time/controller/bottom_nav/bottom_nav_index_provider.dart';
import 'package:mvp_time/core/widgets/bottom_nav_bar/bottom_nav_bar_widget.dart';
import 'package:mvp_time/view/pages/account/account_page.dart';
import 'package:mvp_time/view/pages/home/home_page.dart';
import 'package:mvp_time/view/pages/projects/project_page.dart';
import 'package:mvp_time/view/pages/time_line/time_line_page.dart';

const List<Widget> pages = [
  HomePage(),
  ProjectsPage(),
  TimeLinePage(),
  AccountPage()
];

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  static const routeName = "/mainPage";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: pages[ref.watch(bottonNavIndexProvider)],
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
