import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mvp_time/view/pages/login/login_page.dart';
import 'package:mvp_time/view/pages/main_page.dart';
import 'package:mvp_time/view/pages/notification/notification_page.dart';

final Map<String, WidgetBuilder> pageRoutes = {
  LoginPage.routeName: (context) => LoginPage(),
  MainPage.routeName: (context) => const MainPage(),
  NotificationPage.routeName: (context) => const NotificationPage(),
};
