import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/extension/app_color.dart';
import 'package:portfolio/generated/assets.gen.dart';
import 'package:portfolio/ui/components/dialog/alert_dialog.dart';
import 'package:portfolio/ui/pages/home/home_page.dart';
import 'package:portfolio/ui/pages/project/projects_page.dart';
import 'package:portfolio/ui/pages/resume/resume_page.dart';
import 'dart:ui' as ui;

class MainPage extends StatefulWidget {
  static const route = '/';
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabCtrl;
  final RxBool _isLightMode = false.obs;

  @override
  void initState() {
    super.initState();
    _tabCtrl = TabController(
      length: 3,
      vsync: this,
      animationDuration: Duration(milliseconds: 1200),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _appbar(),
      body: TabBarView(
        controller: _tabCtrl,
        physics: NeverScrollableScrollPhysics(),
        children: _tabView(),
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      forceMaterialTransparency: true,

      flexibleSpace: ClipRect(
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(sigmaX: 7, sigmaY: 7),
          child: Container(
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .05,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: AlignmentGeometry.centerLeft,
                        child: Text(
                          'SEYHAK',
                          style: GoogleFonts.rubik(
                            fontSize: 25,
                            color: AppColor.mainColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    //tabbar
                    Expanded(
                      flex: 2,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: MediaQuery.of(context).size.width > 600
                            ? AlignmentGeometry.center
                            : AlignmentGeometry.centerRight,
                        child: _tabBar(),
                      ),
                    ),

                    //contact
                    if (MediaQuery.of(context).size.width > 600)
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: AlignmentGeometry.centerRight,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              PAlertDialog.showDialog(context);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 16,
                              ),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 7,
                                    color: AppColor.mainColor,
                                    // offset: Offset(0, 5),
                                  ),
                                ],
                                color: AppColor.mainColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'CONTACT ME',
                                    style: GoogleFonts.rubik(
                                      fontSize: 13,
                                      color: AppColor.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget themeBtn() {
    return Obx(
      () => Switch(
        value: _isLightMode.value,
        onChanged: (value) {
          _isLightMode(value);
        },
        activeThumbColor: AppColor.mainColor,
        inactiveThumbColor: Colors.grey.shade900,
        activeTrackColor: AppColor.mainColor,
        inactiveTrackColor: Colors.grey.shade900,
        trackOutlineColor: WidgetStatePropertyAll(AppColor.mainColor),
        activeThumbImage: AppAssets.icons.icLightMode.provider(),
        inactiveThumbImage: AppAssets.icons.icNightMode.provider(),
      ),
    );
  }

  Widget _tabBar() {
    return IntrinsicWidth(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(50),
        ),
        padding: EdgeInsets.all(8),
        child: TabBar(
          controller: _tabCtrl,
          indicator: BoxDecoration(
            color: AppColor.mainColor,
            borderRadius: BorderRadius.circular(50),
          ),
          unselectedLabelStyle: GoogleFonts.rubik(
            fontSize: 15,
            color: AppColor.white,
          ),

          labelStyle: GoogleFonts.rubik(fontSize: 15, color: AppColor.white),
          labelPadding: EdgeInsets.zero,

          tabs: [_tabItem('HOME'), _tabItem('PROJECTS'), _tabItem('RESUME')],
        ),
      ),
    );
  }

  Tab _tabItem(String text) {
    return Tab(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: SizedBox(
            width: 80,
            child: Center(
              child: Text(
                text,
                style: GoogleFonts.robotoCondensed(
                  fontSize: 15,
                  color: AppColor.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _tabView() {
    return [HomePage(), ProjectsPage(), ResumePage()];
  }
}
