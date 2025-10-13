import 'package:get/get.dart';
import 'package:portfolio/ui/main_page.dart';
import 'package:portfolio/ui/pages/home/home_page.dart';
import 'package:portfolio/ui/pages/project/projects_page.dart';
import 'package:portfolio/ui/pages/resume/resume_page.dart';
import 'package:portfolio/ui/splash_page.dart';

class AppRoutes {
  static List<GetPage> get pages {
    List<GetPage> page = [
      GetPage(name: SplashPage.route, page: () => SplashPage()),
      GetPage(name: MainPage.route, page: () => MainPage()),

      //home
      GetPage(name: HomePage.route, page:()=> HomePage()),
      //projects
      GetPage(name: ProjectsPage.route, page:()=> ProjectsPage()),
      //resume
      GetPage(name: ResumePage.route, page:()=> ResumePage()),
    ];

    return page;
  }
}
