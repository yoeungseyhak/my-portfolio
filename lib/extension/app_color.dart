import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension AppColor on Color {
  static Color mainColor = Color(0xFF56BA98);
  static Color blue = mainColor;
  static Color red = Color(0xFFC62827);
  static Color grey = Color(0xFFB9C3C2);
  static Color darkGrey = Color(0xFF626771);
  static Color white = Colors.white;
  static Color blueGrey = Color(0xFF2A2F39);
  static Color cyan = Color(0xFF2A81E6);
  static Color black = Colors.black;
  static Color backgroundColorLight = Color(0xFFEFF0F0);
  static Color backgroundColorDark = Color(0xFF303030);
  static Color grey800 = Color(0xFF424242);
  static Color brown = Color(0xFF675B5F);
  static Color grey300 = Colors.grey.shade300;

  //
  static Color get whiteOrDarkGrey => Get.isDarkMode ? darkGrey : white;
  static Color get whiteOrMain => Get.isDarkMode ? white : mainColor;
  static Color get darkGreyOrWhite => Get.isDarkMode ? white : darkGrey;
  static Color get whiteOrBlueGrey => Get.isDarkMode ? white : blueGrey;
  static Color get blueGreyOrWhite => Get.isDarkMode ? blueGrey : white;
  static Color get greyOrDarkGrey => Get.isDarkMode ? grey : darkGrey;
  static Color get darkGreyOrGrey => Get.isDarkMode ? darkGrey : grey;
  static Color get backgroundColor =>
      Get.isDarkMode ? backgroundColorDark : backgroundColorLight;
  static Color get grey800OrWhite => Get.isDarkMode ? grey800 : white;
  static Color get greyOrWhite => Get.isDarkMode ? grey800 : white;
  static Color get blackOrWhite => Get.isDarkMode ? black : white;
  static Color get whiteOrBlack => Get.isDarkMode ? white : black;
}
