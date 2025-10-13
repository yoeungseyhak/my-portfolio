import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/extension/app_color.dart';

extension TextthemeExtension on TextTheme {
  TextStyle get black => TextStyle(color: AppColor.black);
  TextStyle get blackW400S9 => TextStyle(
      color: AppColor.black, fontSize: 9, fontWeight: FontWeight.w400);
  TextStyle get blackW600S17 => TextStyle(
      color: AppColor.black, fontSize: 17, fontWeight: FontWeight.w600);
  TextStyle get blackW400S17 => TextStyle(color: AppColor.black, fontSize: 17);
  TextStyle get blackW400S15 =>
      black.copyWith(fontSize: 15, fontWeight: FontWeight.w400);
  //White
  TextStyle get whiteW400S9 => blackW400S9.copyWith(color: AppColor.white);
  TextStyle get whiteW400S15 => whiteW400S9.copyWith(fontSize: 15);
  TextStyle get whiteW600S17 =>
      whiteW400S9.copyWith(fontSize: 17, fontWeight: FontWeight.w600);
  TextStyle get whiteW600S15 => whiteW600S17.copyWith(fontSize: 15);
  TextStyle get whiteW600S20 => whiteW600S17.copyWith(fontSize: 20);
  TextStyle get whiteW400S17 => whiteW400S9.copyWith(fontSize: 17);
  TextStyle get whiteW400S13 => whiteW400S9.copyWith(fontSize: 13);
  TextStyle get whiteW500S15 => blueGreyW500S15.copyWith(color: AppColor.white);
  TextStyle get whiteW700S17 =>
      mainColorW700S17.copyWith(color: AppColor.white);
  TextStyle get whiteW700S15 => whiteW700S17.copyWith(fontSize: 15);

  //main color
  TextStyle get mainColorW400S17 =>
      whiteW400S17.copyWith(color: AppColor.mainColor);
  TextStyle get mainColorW600S17 =>
      mainColorW400S17.copyWith(fontWeight: FontWeight.w600);
  TextStyle get mainColorW600S15 => mainColorW600S17.copyWith(fontSize: 15);
  TextStyle get mainColorW700S17 =>
      mainColorW600S17.copyWith(fontWeight: FontWeight.w700);
  //Dark grey
  TextStyle get darkGreyW400S9 =>
      blackW400S9.copyWith(color: AppColor.darkGrey);
  TextStyle get darkGreyW400S15 => darkGreyW400S9.copyWith(fontSize: 15);
  TextStyle get darkGreyW600S15 =>
      darkGreyW400S9.copyWith(fontSize: 15, fontWeight: FontWeight.w600);
  TextStyle get darkGreyW600S17 =>
      whiteW600S17.copyWith(color: AppColor.darkGrey);
  TextStyle get darkGreyW600S20 => darkGreyW600S17.copyWith(fontSize: 20);
  TextStyle get darkGreyW400S13 => greyW400S13.copyWith(fontSize: 13);
  TextStyle get darkGreYW400S13 =>
      greyW400S13.copyWith(fontSize: 13, color: AppColor.darkGrey);
  TextStyle get darkGreyW700S17 =>
      mainColorW700S17.copyWith(color: AppColor.darkGrey);

  //Grey
  TextStyle get greyW400S9 => darkGreyW400S9.copyWith(color: AppColor.grey);
  TextStyle get greyW400S15 => greyW400S9.copyWith(fontSize: 15);
  TextStyle get greyW600S15 =>
      greyW400S9.copyWith(fontSize: 15, fontWeight: FontWeight.w600);
  TextStyle get greyW500S15 =>
      greyW400S15.copyWith(fontWeight: FontWeight.w500);
  TextStyle get greyW400S13 => greyW400S15.copyWith(fontSize: 13);
  TextStyle get greyW600S17 =>
      greyW400S13.copyWith(fontWeight: FontWeight.w600, fontSize: 17);

  // red
  TextStyle get redw500s15 => greyW500S15.copyWith(color: AppColor.red);
  TextStyle get redW600S15 =>
      TextStyle(color: AppColor.red, fontSize: 15, fontWeight: FontWeight.w600);

  //Blue grey
  TextStyle get blueGreyW600S17 =>
      whiteW600S17.copyWith(color: AppColor.blueGrey);
  TextStyle get blueGreyW600S15 =>
      whiteW600S15.copyWith(color: AppColor.blueGrey);
  TextStyle get blueGreyW600S20 =>
      whiteW600S15.copyWith(color: AppColor.blueGrey, fontSize: 20);
  TextStyle get blueGreyW400S17 =>
      blueGreyW600S17.copyWith(fontWeight: FontWeight.w400);
  TextStyle get blueGreyW400S13 => blueGreyW400S17.copyWith(fontSize: 13);
  TextStyle get blueGreyW400S15 => blueGreyW400S13.copyWith(fontSize: 15);
  TextStyle get blueGreyW500S15 =>
      blueGreyW600S17.copyWith(fontWeight: FontWeight.w500, fontSize: 15);
  TextStyle get blueGreyW700S17 =>
      darkGreyW700S17.copyWith(color: AppColor.blueGrey);
  TextStyle get blueGreyW700S15 => blueGreyW700S17.copyWith(fontSize: 15);

  //theme
  TextStyle get whiteOrDarkGreyW600S17 =>
      Get.isDarkMode ? whiteW600S17 : darkGreyW600S17;
  TextStyle get whiteOrDarkGreyW600S20 =>
      Get.isDarkMode ? whiteW600S20 : darkGreyW600S20;
  TextStyle get whiteOrDarkGreyW400S13 =>
      Get.isDarkMode ? whiteW400S13 : darkGreyW400S13;
  TextStyle get whiteOrBlackW600S17 =>
      Get.isDarkMode ? whiteW600S17 : blackW600S17;
  TextStyle get whiteOrBlackW400S17 =>
      Get.isDarkMode ? whiteW400S17 : blackW400S17;
  TextStyle get whiteOrBlackW400S15 =>
      Get.isDarkMode ? whiteW400S15 : blackW400S15;
  TextStyle get whiteOrDarkGreyW400S15 =>
      Get.isDarkMode ? whiteW400S15 : darkGreyW400S15;
  TextStyle get darkGreyOrWhiteW600S17 =>
      Get.isDarkMode ? darkGreyW600S17 : whiteW600S17;
  TextStyle get blueGreyOrWhiteW600S17 =>
      Get.isDarkMode ? blueGreyW600S17 : whiteW600S17;
  TextStyle get blueGreyOrWhiteW500S15 =>
      Get.isDarkMode ? blueGreyW500S15 : whiteW500S15;
  TextStyle get whiteOrBlueGreyW500S15 =>
      Get.isDarkMode ? whiteW500S15 : blueGreyW500S15;
  TextStyle get whiteOrBlueGreyW600S17 =>
      Get.isDarkMode ? whiteW600S17 : blueGreyW600S17;
  TextStyle get whiteOrBlueGreyW600S15 =>
      Get.isDarkMode ? whiteW600S15 : blueGreyW600S15;
  TextStyle get whiteOrBlueGreyW600S20 =>
      Get.isDarkMode ? whiteW600S20 : blueGreyW600S20;
  TextStyle get blueGreyOrWhiteW400S17 =>
      Get.isDarkMode ? blueGreyW400S17 : whiteW400S17;
  TextStyle get whiteOrBlueGreyW400S17 =>
      Get.isDarkMode ? whiteW400S17 : blueGreyW400S17;
  TextStyle get whiteOrBlueGreyW400S13 =>
      Get.isDarkMode ? whiteW400S13 : blueGreyW400S13;
  TextStyle get greyOrDarkGreyW400S9 =>
      Get.isDarkMode ? greyW400S9 : darkGreyW400S9;
  TextStyle get greyOrDarkGreyW400S15 =>
      Get.isDarkMode ? greyW400S15 : darkGreyW400S15;
  TextStyle get greyOrDarkGreyW600S15 =>
      Get.isDarkMode ? greyW600S15 : darkGreyW600S15;
  TextStyle get greyOrDarkGreyW400S13 =>
      Get.isDarkMode ? greyW400S13 : darkGreyW400S13;
  TextStyle get greyOrDarkGreyW600S17 =>
      Get.isDarkMode ? greyW600S17 : darkGreyW600S17;
  TextStyle get greyOrBlueGreyW500S15 =>
      Get.isDarkMode ? greyW500S15 : blueGreyW500S15;
  TextStyle get greyOrBlueGreyW600S17 =>
      Get.isDarkMode ? greyW600S17 : blueGreyW600S17;
  TextStyle get greyOrBlueGreyW400S15 =>
      Get.isDarkMode ? greyW400S15 : blueGreyW400S15;
  TextStyle get greyOrBlueGreyW400S13 =>
      Get.isDarkMode ? greyW400S13 : blueGreyW400S13;
  TextStyle get whiteOrBlueGreyW700S17 =>
      Get.isDarkMode ? whiteW700S17 : blueGreyW700S17;

  TextStyle get whiteOrBlueGreyW700S15 =>
      Get.isDarkMode ? whiteW700S15 : blueGreyW700S15;
  TextStyle get blueGreyOrWhiteW700S15 =>
      Get.isDarkMode ? blueGreyW700S15 : whiteW700S15;
}
