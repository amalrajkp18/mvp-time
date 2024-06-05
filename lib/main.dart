import 'package:flutter/material.dart';
import 'package:mvp_time/core/routes/page_routes.dart';
import 'package:mvp_time/core/theme/app_theme.dart';
import 'package:mvp_time/view/pages/login/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme()(context),
      routes: pageRoutes,
      initialRoute: LoginPage.routeName,
    );
  }
}
