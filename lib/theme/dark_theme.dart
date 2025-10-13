part of "app_theme.dart";

ThemeData _$darkTheme() => ThemeData.dark(useMaterial3: true).copyWith(
      scaffoldBackgroundColor: AppColor.backgroundColorDark,
      appBarTheme: AppBarTheme(
        centerTitle: false,
        backgroundColor: AppColor.backgroundColorDark,
        scrolledUnderElevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColor.backgroundColorDark,
          systemNavigationBarColor: AppColor.backgroundColorDark,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
      ),
      tabBarTheme: TabBarThemeData(
        overlayColor: WidgetStatePropertyAll(Colors.transparent),
        dividerHeight: 0,
        labelStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: AppColor.mainColor),
        unselectedLabelStyle: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: AppColor.grey),
        indicatorColor: AppColor.mainColor,
      ),
    );
