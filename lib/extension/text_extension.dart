import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/extension/texttheme_extension.dart';

extension TextExtension on String {
  Text get textDarkGreyW400S9 =>
      Text(this, style: Get.textTheme.darkGreyW400S9);
  Text get textWhiteW400S9 => Text(this, style: Get.textTheme.whiteW400S9);
}
