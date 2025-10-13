import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:portfolio/service/routes/app_routes.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/ui/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      unknownRoute: GetPage(name: '/error', page: () => Container()),
      getPages: AppRoutes.pages,
      initialRoute: SplashPage.route,
    );
  }
}
