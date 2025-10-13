part of "app_theme.dart";

ThemeData _$lightTheme() => ThemeData.light(useMaterial3: true).copyWith(
  scaffoldBackgroundColor: AppColor.backgroundColorLight,
  appBarTheme: AppBarTheme(
    centerTitle: false,
    backgroundColor: AppColor.backgroundColorLight,
    scrolledUnderElevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColor.backgroundColorLight,
      systemNavigationBarColor: AppColor.backgroundColorLight,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  ),
  tabBarTheme: TabBarThemeData(
    overlayColor: WidgetStatePropertyAll(Colors.transparent),
    dividerHeight: 0,
    labelStyle: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: AppColor.mainColor,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: AppColor.darkGrey,
    ),
    indicatorColor: AppColor.mainColor,
  ),
);
