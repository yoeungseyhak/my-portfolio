import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/service/app_service.dart';
import 'package:portfolio/ui/main_page.dart';

class SplashPage extends StatefulWidget {
  static const route = '/';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  _initService() async {
    await Get.putAsync(() => AppService().init());
    await Future.delayed(Duration(seconds: 3));
    //goto page
    Get.offAllNamed(MainPage.route);
  }

  @override
  void initState() {
    super.initState();
    _initService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Splash page')));
  }
}
